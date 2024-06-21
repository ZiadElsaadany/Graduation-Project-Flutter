import 'dart:io';

import 'package:aoun_tu/constants.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/utls/my_hive.dart';

class AddPostView extends StatefulWidget {
  const AddPostView({Key? key}) : super(key: key);

  @override
  State<AddPostView> createState() => _AddPostViewState();
}

class _AddPostViewState extends State<AddPostView> {
  List<File?> images = [];

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

  @override
  Widget build(BuildContext context) {
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
                  : images.length == 2
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.file(images[0]!)),
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
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.file(images[1]!)),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          images.remove(images[1]);
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
                            ],
                          ),
                        )
                      : const SizedBox(),
              const SizedBox(
                height: 16,
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColors.mainColor,
                textColor: AppColors.white,
                minWidth: double.infinity,
                child: Text(
                  "نشر",
                  style: AppStyles.font16WhiteBold,
                ),
              )
            ],
          )),
    );
  }
}
