import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../home/data/models/charity_model.dart';

class CharityNameAndLogo extends StatelessWidget {
  const CharityNameAndLogo({super.key, required this.charity});
  final CharityModel charity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInLeft(
          child: Text(
            charity.charityName!,
            style: AppStyles.textStyle17.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        ClipRRect(
          //borderRadius: BorderRadius.circular(46.h),
          child: Image.network(
            charity.imageUrl!,
            width: 92.w,
            height: 92.h,
          ),
        ),
      ],
    );
  }
}
