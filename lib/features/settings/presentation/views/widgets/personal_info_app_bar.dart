import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class PersonalInfoAppBar extends StatelessWidget {
  const PersonalInfoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.mainColor,
              ),
            ),
            horizontalSpace(74),
            Text(
              AppText.personalInfo,
              style: AppStyles.font16BlueBold,
            ),
          ],
        ),
        const Divider()
      ],
    );
  }
}
