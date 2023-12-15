import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: Text(
        title,
        style: AppStyles.textStyle14.copyWith(
          color: AppColors.mainColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
