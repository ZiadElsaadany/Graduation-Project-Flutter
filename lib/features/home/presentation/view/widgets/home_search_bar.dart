import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 12.h, bottom: 14.h, left: 16.w, right: 16.w),
      child: SizedBox(
        height: 40,
        child: TextField(
          style: AppStyles.textStyle15,
          cursorColor: AppColors.mainColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            prefixIcon: const Icon(
              Icons.search,
              color: AppColors.mainColor,
            ),
            fillColor: AppColors.lightGrey.withOpacity(0.25),
            filled: true,
            hintText: AppText.search,
            hintStyle: AppStyles.textStyle15
                .copyWith(color: const Color(0xff5c5c5c).withOpacity(0.5)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: AppColors.lightGrey.withOpacity(0.5),
              ),
            ),
            enabledBorder: inputBorder(),
            focusedBorder: inputBorder(),
            disabledBorder: inputBorder(),
          ),
        ),
      ),
    );
  }
}

InputBorder inputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: AppColors.lightGrey.withOpacity(0.5)),
  );
}
