import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'current_campiagn_item.dart';

class CurrentCampiagnList extends StatelessWidget {
  const CurrentCampiagnList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 423.h,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(end: 10, bottom: 23),
              child:
                  const CurrentCampiagnItem().animate().effect().scale().move(),
            );
          }),
    );
  }
}
