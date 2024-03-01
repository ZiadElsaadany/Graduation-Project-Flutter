import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.color = AppColors.mainColor,
      required this.title,
      this.width = double.infinity,
      this.onTap,
      this.height,
      this.textStyle});
  final double width;
  final Color color;
  final String title;
  final void Function()? onTap;
  final double? height;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: height ?? 42,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 2,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: Text(title,
                style: textStyle ??
                    AppStyles.textStyle14.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.w700)),
          ),
        ));
  }
}
