import 'package:aoun_tu/core/utls/routers.dart';
import 'package:aoun_tu/core/utls/spacing.dart';
import 'package:aoun_tu/features/posts/data/models/post_model.dart';
import 'package:aoun_tu/features/posts/presentation/view/widget/circle_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/my_hive.dart';
import '../../../../../core/utls/styles.dart';
import 'likes_and_comments.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.index, required this.posts});
  final int index;
  final List<PostModel> posts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        posts[index].images.isEmpty
            ? const SizedBox()
            : posts[index].images.length == 1
                ? GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                          AppRouter.kViewImageFromInternet,
                          extra: posts[index].images[0]);
                    },
                    child: Hero(
                      tag: posts[index].images[0],
                      child: CachedNetworkImage(
                        width: double.infinity,
                        height: 250.h,
                        fit: BoxFit.cover,
                        placeholder: (c, b) {
                          return SizedBox(
                            width: double.infinity,
                            height: 100.0.h,
                            child: Shimmer.fromColors(
                              baseColor: AppColors.grey.withOpacity(0.5),
                              highlightColor: AppColors.white,
                              child: Container(
                                color: AppColors.grey.withOpacity(0.5),
                              ),
                            ),
                          );
                        },
                        errorWidget: (c, v, d) {
                          return const Icon(Icons.error);
                        },
                        httpHeaders: {
                          "Authorization": "Bearer ${AppHive.getToken()}",
                        },
                        imageUrl: posts[index].images[0],
                      ),
                    ),
                  )
                : Wrap(
                    children: [
                      ...posts[index].images.map((e) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: AppColors.grey)),
                              child: GestureDetector(
                                onTap: () {
                                  GoRouter.of(context).push(
                                      AppRouter.kViewImageFromInternet,
                                      extra: e);
                                },
                                child: Hero(
                                  tag: e,
                                  child: CachedNetworkImage(
                                    placeholder: (c, b) {
                                      return SizedBox(
                                        width: 200.0.w,
                                        height: 100.0.h,
                                        child: Shimmer.fromColors(
                                          baseColor:
                                              AppColors.grey.withOpacity(0.5),
                                          highlightColor: AppColors.white,
                                          child: Container(
                                            color:
                                                AppColors.grey.withOpacity(0.5),
                                          ),
                                        ),
                                      );
                                    },
                                    errorWidget: (c, v, d) {
                                      return const Icon(Icons.error);
                                    },
                                    httpHeaders: {
                                      "Authorization":
                                          "Bearer ${AppHive.getToken()}",
                                    },
                                    imageUrl: e,
                                  ),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
        verticalSpace(9),
        Padding(
          padding: EdgeInsets.only(right: 12.w, left: 12.w),
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              posts[index].content,
              textAlign: TextAlign.start,
              style: AppStyles.textStyle14.copyWith(color: AppColors.grey),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleForImage(image: posts[index].userImage),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        posts[index].userName,
                        style: AppStyles.textStyle14Cairo
                            .copyWith(color: AppColors.mainColor),
                      ),
                      Text(
                        posts[index].createdSince.toString(),
                        style: AppStyles.textStyle10
                            .copyWith(color: AppColors.text2),
                      ),
                    ],
                  ),
                ],
              ),
              LikesAndComments(
                index: index,
                posts: posts,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Divider(
          thickness: 0.7,
          color: AppColors.mainColor.withOpacity(0.8),
        ),
      ],
    );
  }
}
