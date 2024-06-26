import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/case_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationFieldBody extends StatelessWidget {
  const DonationFieldBody(
      {super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: FadeInLeft(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CaseItem(
                  index: index + 1,
                  image: image,
                  title: title,
                );
              }),
        ),
      ),
    );
  }
}
