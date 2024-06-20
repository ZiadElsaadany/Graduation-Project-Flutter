import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../posts/presentation/controller/get_posts_controller/get_posts_cubit.dart';
import '../../../../posts/presentation/controller/get_posts_controller/get_posts_states.dart';
import 'posts_list_widget.dart';

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({super.key});

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: AppBar(
            backgroundColor: AppColors.white,
            bottom: TabBar(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              indicatorColor: AppColors.mainColor,
              labelColor: AppColors.mainColor,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              tabs: const <Widget>[
                Tab(
                  child: Text('المنشورات'),
                ),
                Tab(
                  child: Text('المحفوظات'),
                ),
                Tab(
                  child: Text('الإعجابات'),
                ),
              ],
            ),
          ),
        ),
        BlocBuilder<GetPostsCubit, GetPostsStates>(
          builder: (context, state) {
            var cubit = context.read<GetPostsCubit>();
            return SizedBox(
              height: MediaQuery.of(context).size.height -
                  225.h, // Adjust as needed
              child: TabBarView(
                controller: _tabController,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  state is GetPostsLoading
                      ? ListView.separated(
                          separatorBuilder: (c, index) {
                            return const SizedBox(
                              height: 15,
                            );
                          },
                          itemBuilder: (c, index) {
                            return Shimmer.fromColors(
                              baseColor: Colors.grey.withOpacity(0.5),
                              highlightColor: Colors.white,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.grey.withOpacity(0.5),
                                ),
                                width: double.infinity,
                                height: 200,
                              ),
                            );
                          },
                          itemCount: 4,
                        )
                      : cubit.myPosts.isEmpty
                          ? Center(
                              child: Image.asset(
                                AppImages.empty,
                              ),
                            )
                          : PostsListWidget(
                              posts: cubit.myPosts,
                            ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.empty,
                        ),
                      ],
                    ),
                  ),
                  state is GetPostsLoading
                      ? ListView.separated(
                          separatorBuilder: (c, index) {
                            return const SizedBox(
                              height: 15,
                            );
                          },
                          itemBuilder: (c, index) {
                            return Shimmer.fromColors(
                              baseColor: Colors.grey.withOpacity(0.5),
                              highlightColor: Colors.white,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.grey.withOpacity(0.5),
                                ),
                                width: double.infinity,
                                height: 200,
                              ),
                            );
                          },
                          itemCount: 4,
                        )
                      : cubit.myLikesPosts.isEmpty
                          ? Center(
                              child: Image.asset(
                                AppImages.empty,
                              ),
                            )
                          : PostsListWidget(
                              posts: cubit.myLikesPosts,
                            ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
