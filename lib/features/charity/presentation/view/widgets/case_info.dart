import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../../../home/presentation/view/widgets/app_button.dart';
import 'case_statistic_info.dart';

class CaseInfo extends StatelessWidget {
  const CaseInfo({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 226.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.font16BlueBold,
                  ),
                  verticalSpace(12),
                  Text(
                    AppText.campiagnsubtitle,
                    style: AppStyles.font13LightBlueWeight400,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_rounded,
                      color: AppColors.yellow,
                      size: 24,
                    )),
                Text(
                  AppText.share,
                  style: AppStyles.font11DarkBlueWeight400,
                )
              ],
            )
          ],
        ),
        verticalSpace(10),
        const Divider(
          endIndent: 30,
          indent: 30,
        ),
        verticalSpace(15),
        Text(
          AppText.caseDetails,
          style: AppStyles.font16BlueBold,
        ),
        verticalSpace(9),
        Text(
          AppText.familyDefinition,
          style: AppStyles.font13LightGreyWeight400,
        ),
        verticalSpace(20),
        const Divider(
          endIndent: 30,
          indent: 30,
        ),
        verticalSpace(24),
        const CaseStatisticalInfo(),
        verticalSpace(28),
        AppButton(
          onTap: () {},
          title: AppText.donateNow,
          color: AppColors.yellow,
          height: 50,
          textStyle: AppStyles.font16WhiteBold,
        ),
      ],
    );
  }
}
