import 'package:flutter/material.dart';

import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class CampiagnStatisticalInfo extends StatelessWidget {
  const CampiagnStatisticalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(
              AppImages.timer,
              width: 35,
              height: 35,
            ),
            verticalSpace(10),
            Text(
              AppText.remainingPeriod,
              style: AppStyles.font12BlueBold,
            ),
            verticalSpace(20),
            Text(
              "45 ${AppText.day}",
              style: AppStyles.font14YellowBold,
            )
          ],
        ),
        horizontalSpace(24),
        Container(
          width: 1,
          height: 100,
          color: const Color(0XFFDCCFCF),
        ),
        horizontalSpace(24),
        Column(
          children: [
            Image.asset(
              AppImages.people,
              width: 35,
              height: 35,
            ),
            verticalSpace(10),
            Text(
              AppText.beneficiaries,
              style: AppStyles.font12BlueBold,
            ),
            verticalSpace(20),
            Text(
              "800 ${AppText.person}",
              style: AppStyles.font14YellowBold,
            )
          ],
        ),
        horizontalSpace(24),
        Container(
          width: 1,
          height: 100,
          color: const Color(0XFFDCCFCF),
        ),
        horizontalSpace(24),
        Column(
          children: [
            Image.asset(
              AppImages.coins,
              width: 35,
              height: 35,
            ),
            verticalSpace(10),
            Text(
              AppText.requairedMoney,
              style: AppStyles.font12BlueBold,
            ),
            verticalSpace(20),
            Text(
              "10.000 ج.م",
              style: AppStyles.font14YellowBold,
            )
          ],
        ),
      ],
    );
  }
}
