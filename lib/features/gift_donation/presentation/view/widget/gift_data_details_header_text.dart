import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class GiftDataDetailsHeaderText extends StatelessWidget {
  const GiftDataDetailsHeaderText({Key? key, required this.text})
      : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle15bold.copyWith(
        color: AppColors.text1,
      ),
      textAlign: TextAlign.center,
    );
  }
}
