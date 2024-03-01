import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../../../home/presentation/view/widgets/app_button.dart';
import 'campiagn_statistical_info.dart';

class CampiagnInfo extends StatelessWidget {
  const CampiagnInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.waterOfLife,
                  style: AppStyles.font16BlueBold,
                ),
                verticalSpace(12),
                Text(
                  AppText.waterCampiagnSubTitle,
                  style: AppStyles.font13LightBlueWeight400,
                ),
              ],
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
        verticalSpace(30),
        const Divider(
          endIndent: 30,
          indent: 30,
        ),
        verticalSpace(27),
        Text(
          AppText.campiagnDetails,
          style: AppStyles.font16BlueBold,
        ),
        verticalSpace(9),
        Text(
          AppText.waterOfLifeCampiagnDefinition,
          style: AppStyles.font13LightGreyWeight400,
        ),
        verticalSpace(30),
        const Divider(
          endIndent: 30,
          indent: 30,
        ),
        verticalSpace(27),
        const CampiagnStatisticalInfo(),
        verticalSpace(50),
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
