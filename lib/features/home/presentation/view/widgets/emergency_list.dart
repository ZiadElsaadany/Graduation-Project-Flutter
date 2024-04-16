import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'emergency_item.dart';

class EmergencyList extends StatelessWidget {
  const EmergencyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 281.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsetsDirectional.only(end: 24, bottom: 23),
            child: EmergencyItem(),
          );
        },
      ),
    );
  }
}
