import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class DonateButton extends StatelessWidget {
  const DonateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 42,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: AppColors.yellow,
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
            child: Text(AppText.donateNow,
                style: AppStyles.textStyle14.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w700)),
          ),
        ));
  }
}
