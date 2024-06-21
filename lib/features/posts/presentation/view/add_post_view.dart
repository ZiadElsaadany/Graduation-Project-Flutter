import 'dart:io';

import 'package:aoun_tu/constants.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/core/utls/toast.dart';
import 'package:aoun_tu/features/posts/presentation/controller/create_post_controller/create_post_cubit.dart';
import 'package:aoun_tu/features/posts/presentation/controller/create_post_controller/create_post_states.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/utls/my_hive.dart';
import '../../../../injection_container.dart';
import '../../data/repos/posts_repo_implementation.dart';

class AddPostView extends StatelessWidget {
  const AddPostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CreatePostCubit(
          postsRepo: serviceLocator<PostsRepoImplementation>()),
      child: AddPostViewBody(),
    );
  }
}

class AddPostViewBody extends StatefulWidget {
  const AddPostViewBody({super.key});

  @override
  State<AddPostViewBody> createState() => _AddPostViewBodyState();
}

class _AddPostViewBodyState extends State<AddPostViewBody> {
  List<File> images = [];

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickMultiImage();

    setState(() {
      if (pickedFile.isNotEmpty) {
        images.addAll(pickedFile.map((e) => File(e.path)));
      } else {
        debugPrint('No image selected.');
      }
    });
  }

  TextEditingController postController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<CreatePostCubit>(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: Constants.appBar(title: AppText.createNewPost),
          body: ListView(
            padding: const EdgeInsets.all(15),
            children: [
              const Divider(
                color: AppColors.mainColor,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(17.5),
                    child: CachedNetworkImage(
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                      imageUrl: Hive.box(AppHive.userBox).get(AppHive.imageKey),
                      placeholder: (context, url) => const CircleAvatar(),
                      errorWidget: (context, url, error) =>
                      const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      Hive.box(AppHive.userBox).get(AppHive.nameKey),
                      style: AppStyles.textStyle15.copyWith(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      pickImage();
                    },
                    child: Image.asset(
                      AppImages.photos,
                      width: 30.w,
                      height: 30.h,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              TextFormField(
                controller: postController,
                maxLines: 5,
                minLines: 3,
                decoration: InputDecoration(
                  hintText: '''اكتب منشورك هنا..''',
                  enabled: true,
                  filled: true,
                  fillColor: AppColors.greyComment,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                ),
              ),
              // const SizedBox(height: 16,),

              images.length == 1
                  ? Center(
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.file(
                        images[0]!,
                        height: 200,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          images.remove(images[0]);
                        });
                      },
                      child: const CircleAvatar(
                          backgroundColor: AppColors.black,
                          child: Icon(
                            Icons.close,
                            color: AppColors.white,
                          )),
                    ),
                  ],
                ),
              )
                  : Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 8, left: 8),
                child: Wrap(
                  children: [
                    ...images.map((e) =>
                        SizedBox(
                          width: MediaQuery
                              .sizeOf(context)
                              .width * 0.44,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.file(e!)),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      images.remove(e);
                                    });
                                  },
                                  child: const CircleAvatar(
                                      backgroundColor: AppColors.black,
                                      child: Icon(
                                        Icons.close,
                                        color: AppColors.white,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),)
                  ],
                ),
              ),

              const SizedBox(
                height: 16,
              ),
              BlocConsumer<CreatePostCubit, CreatePostStates>(
                listener: (context, state) {
                  if(state is CreatePostFailureState){
                    showToast(title: state.errorMessage, color: AppColors.red);
                  } else if(state is CreatePostSuccessState){
                    showToast(title: "Post created", color: AppColors.red);
                  }
                },
                builder: (context, state) {
                  return   state is CreatePostLoadingState ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.mainColor,
                    ),
                  ): MaterialButton(
                    onPressed: () {
                      if(postController.text.trim().isNotEmpty && images.isNotEmpty) {
                        cubit.createPost(postContent: postController.text.trim(), images: images );

                      }else {
                        showToast(title: "ادخل المنشور وصور", color: AppColors.red);
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: AppColors.mainColor,
                    textColor: AppColors.white,
                    minWidth: double.infinity,
                    child: Text(
                      "نشر",
                      style: AppStyles.font16WhiteBold,
                    ),
                  );
                },
              )
            ],
          )),
    );
  }
}
