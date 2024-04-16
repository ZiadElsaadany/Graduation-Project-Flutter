import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'case_info.dart';

class ContainerCaseInfo extends StatelessWidget {
  const ContainerCaseInfo({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -30),
      child: Container(
        padding:
            EdgeInsets.only(top: 21.h, bottom: 48.h, left: 16.w, right: 16.w),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: FadeInUp(
          child: CaseInfo(
            title: title,
          ),
        ),
      ),
    );
  }
}
