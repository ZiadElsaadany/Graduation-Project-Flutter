import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class CaseStatisticalInfo extends StatelessWidget {
  const CaseStatisticalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              AppText.requairedMoney,
              style: AppStyles.font12BlueBold,
            ),
            verticalSpace(12),
            Image.asset(
              AppImages.coin2,
              width: 35,
              height: 35,
            ),
            verticalSpace(12),
            Text(
              "8.000 ج.م",
              style: AppStyles.font14LightGreyBold,
            )
          ],
        ),
        horizontalSpace(16),
        Container(
          width: 1,
          height: 100,
          color: const Color(0XFFDCCFCF),
        ),
        horizontalSpace(16),
        Column(
          children: [
            Text(
              AppText.moneyPaied,
              style: AppStyles.font12BlueBold,
            ),
            verticalSpace(12),
            const Icon(
              Icons.check_rounded,
              color: AppColors.green,
              size: 35,
            ),
            verticalSpace(12),
            Text(
              "5.000 ج.م",
              style: AppStyles.font14LightGreyBold
                  .copyWith(color: AppColors.green),
            ),
          ],
        ),
        horizontalSpace(22),
        Container(
          width: 1,
          height: 100,
          color: const Color(0XFFDCCFCF),
        ),
        horizontalSpace(22),
        Column(
          children: [
            Text(
              AppText.moneyRemaining,
              style: AppStyles.font12BlueBold,
            ),
            verticalSpace(12),
            Image.asset(
              AppImages.loading,
              width: 35,
              height: 35,
            ),
            verticalSpace(12),
            Text(
              "3.000 ج.م",
              style: AppStyles.font14YellowBold,
            )
          ],
        ),
      ],
    );
  }
}
