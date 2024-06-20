import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/my_hive.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class PostItemWidget extends StatelessWidget {
  const PostItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          width: double.infinity,
          height: 250.h,
          fit: BoxFit.cover,
          imageUrl:
              'https://i.pinimg.com/736x/8a/f6/cd/8af6cdaedb759aebe88ec48d7f1e7bf7.jpg',
          placeholder: (context, url) => Shimmer.fromColors(
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
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        verticalSpace(9),
        Padding(
          padding: EdgeInsets.only(right: 12.w, left: 12.w),
          child: Column(
            children: [
              Text(
                AppText.postText,
                textAlign: TextAlign.start,
                style: AppStyles.textStyle14
                    .copyWith(color: AppColors.grey, fontSize: 13.sp),
              ),
              verticalSpace(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: CachedNetworkImage(
                          width: 33.w,
                          height: 33.h,
                          fit: BoxFit.cover,
                          imageUrl:
                              Hive.box(AppHive.userBox).get(AppHive.imageKey),
                          placeholder: (context, url) => const CircleAvatar(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      horizontalSpace(12),
                      Text(
                        Hive.box(AppHive.userBox).get(AppHive.nameKey),
                        style: AppStyles.font16BlueBold.copyWith(
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.favorite_rounded,
                            color: AppColors.mainColor,
                            size: 28,
                          ),
                          Text(
                            '35',
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.mainColor),
                          ),
                        ],
                      ),
                      horizontalSpace(22),
                      Column(
                        children: [
                          Image.asset(
                            AppImages.comment,
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            '17',
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.mainColor),
                          ),
                        ],
                      ),
                      horizontalSpace(22),
                      Column(
                        children: [
                          Image.asset(
                            AppImages.bookmark,
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            '19',
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.mainColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(12),
            ],
          ),
        ),
      ],
    );
  }
}
