import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;

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
              text,
              style: AppStyles.font16BlueBold,
            ),
          ],
        ),
        const Divider()
      ],
    );
  }
}
