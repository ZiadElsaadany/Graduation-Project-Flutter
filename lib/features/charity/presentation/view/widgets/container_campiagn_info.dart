import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'campiagn_info.dart';

class ContainerCampiagnInfo extends StatelessWidget {
  const ContainerCampiagnInfo({super.key});

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
        child: const CampiagnInfo(),
      ),
    );
  }
}