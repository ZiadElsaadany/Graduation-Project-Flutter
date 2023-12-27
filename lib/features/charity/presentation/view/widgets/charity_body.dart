import 'package:aoun_tu/features/charity/presentation/view/widgets/charity_name_and_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'charity_info.dart';

class CharityBody extends StatelessWidget {
  const CharityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CharityNameAndLogo(),
              SizedBox(
                height: 26.h,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsetsDirectional.only(
                      start: 18.w, end: 23.w, top: 22.h, bottom: 22.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.w),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      CharityInfo(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
