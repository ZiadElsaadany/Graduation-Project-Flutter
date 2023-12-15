import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.postImage,
          width: double.infinity,
          height: 240.h,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          AppText.postText,
          style: AppStyles.textStyle12.copyWith(color: AppColors.grey),
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Image.network(
                      AppImages.profileImage,
                      width: 34,
                      height: 34,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Salsabil Elshiekh',
                        style: AppStyles.textStyle14Cairo
                            .copyWith(color: AppColors.mainColor),
                      ),
                      Text(
                        AppText.dayAgo,
                        style: AppStyles.textStyle10
                            .copyWith(color: AppColors.text2),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite_rounded,
                          color: AppColors.mainColor,
                          size: 28,
                        ),
                      ),
                      Text(
                        '35',
                        style: AppStyles.textStyle12
                            .copyWith(color: AppColors.mainColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          AppImages.comment,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Text(
                        '17',
                        style: AppStyles.textStyle12
                            .copyWith(color: AppColors.mainColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          AppImages.bookmark,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Text(
                        '19',
                        style: AppStyles.textStyle12
                            .copyWith(color: AppColors.mainColor),
                      ),
                    ],
                  )
                ],
              )
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
