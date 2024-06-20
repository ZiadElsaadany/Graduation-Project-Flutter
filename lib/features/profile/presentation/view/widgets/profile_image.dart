import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/my_hive.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.mainColor,
            radius: 60.5.r,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60.r,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(55.r),
                child: CachedNetworkImage(
                  width: 110.w,
                  height: 110.h,
                  fit: BoxFit.cover,
                  imageUrl: Hive.box(AppHive.userBox).get(AppHive.imageKey),
                  placeholder: (context, url) => const CircleAvatar(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
          Positioned(
            right: 130,
            bottom: 5,
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 14,
                backgroundColor: AppColors.mainColor,
                child: Icon(
                  Icons.mode_edit_outline_rounded,
                  color: AppColors.white,
                  size: 20.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
