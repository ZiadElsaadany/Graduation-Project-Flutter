import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class ClothesCountBar extends StatelessWidget {
  const ClothesCountBar(
      {super.key, required this.count, this.plus, this.minus});
  final int count;
  final void Function()? plus;
  final void Function()? minus;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: const LinearGradient(
            colors: [Colors.white, AppColors.lightGrey2],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: plus,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              count.toString(),
              style: AppStyles.font20YellowWeight500.copyWith(
                  fontSize: 22,
                  color:
                      count == 0 ? const Color(0xff7B7B7B) : AppColors.yellow),
            ),
            GestureDetector(
              onTap: minus,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: count == 0
                      ? const Color(0xff7B7B7B).withOpacity(.25)
                      : AppColors.mainColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.remove_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
