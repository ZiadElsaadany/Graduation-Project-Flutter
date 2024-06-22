import 'package:aoun_tu/features/home/data/models/charity_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/routers.dart';
import '../../../../../core/utls/styles.dart';

class CharityItem extends StatelessWidget {
  const CharityItem({super.key, required this.charity});
  final CharityModel charity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kCharity);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            charity.imageUrl!,
            width: 55.w,
            height: 55.h,
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            width: 77.w,
            child: Text(
              textAlign: TextAlign.center,
              //overflow: TextOverflow.ellipsis,
              charity.charityName!,
              style: AppStyles.textStyle12.copyWith(
                color: AppColors.text1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
