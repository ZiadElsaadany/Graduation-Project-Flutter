import 'package:aoun_tu/core/utls/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/routers.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../../../home/presentation/view/widgets/app_button.dart';

class CaseItem extends StatelessWidget {
  const CaseItem(
      {super.key,
      required this.index,
      required this.image,
      required this.title});
  final int index;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 22.h),
      width: double.infinity,
      height: 295.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 218.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${AppText.state} : $index',
                      style: AppStyles.font16BlueBold.copyWith(fontSize: 14),
                    ),
                    verticalSpace(12),
                    Text(
                      AppText.familyDefinition,
                      style: AppStyles.font12DarkGreyWeight400,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Container(
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: AppColors.mainColor,
                    )),
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(image)),
                ),
              ),
            ],
          ),
          verticalSpace(18),

          verticalSpace(24),
          const Divider(
            thickness: 1,
            endIndent: 12,
            indent: 12,
          ),
          verticalSpace(20),
          AppButton(
            title: AppText.donateNow,
            color: AppColors.yellow,
            onTap: () {
              GoRouter.of(context).push(AppRouter.kCaseDetails,
                  extra: {'title': title, 'image': image});
            },
          ),
        ],
      ),
    );
  }
}
