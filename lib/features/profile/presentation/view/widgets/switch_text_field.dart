import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';

class SwitchTextField extends StatefulWidget {
  const SwitchTextField({super.key, required this.label, required this.text});
  final String label;
  final String text;

  @override
  State<SwitchTextField> createState() => _SwitchTextFieldState();
}

class _SwitchTextFieldState extends State<SwitchTextField> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppStyles.font14LightGreyBold.copyWith(color: AppColors.text1),
        ),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style:
                  AppStyles.font13LightBlueWeight400.copyWith(fontSize: 14.sp),
            ),
            Switch(
              value: value,
              onChanged: (v) {
                setState(() {
                  value = v;
                });
              },
              activeColor: AppColors.white,
              activeTrackColor: AppColors.mainColor,
              inactiveThumbColor: AppColors.white,
              inactiveTrackColor: AppColors.lightGrey,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            )
          ],
        ),
        const Divider(),
      ],
    );
  }
}
