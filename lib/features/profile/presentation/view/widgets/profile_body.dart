import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../posts/presentation/controller/get_posts_controller/get_posts_cubit.dart';
import 'profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/utls/my_hive.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import 'profile_tab_view.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetPostsCubit>(context).getPosts(page: 0);
    BlocProvider.of<GetPostsCubit>(context).getBookMarks();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          await BlocProvider.of<GetPostsCubit>(context).getPosts(page: 0);
          await BlocProvider.of<GetPostsCubit>(context).getBookMarks();
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    margin: EdgeInsets.only(top: 80.h),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        verticalSpace(50),
                        Text(
                          Hive.box(AppHive.userBox).get(AppHive.nameKey),
                          style: AppStyles.font16BlueBold.copyWith(
                            fontSize: 18.sp,
                          ),
                        ),
                        verticalSpace(18),
                        const ProfileTabBar()
                      ],
                    ),
                  ),
                  const ProfileImage()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
