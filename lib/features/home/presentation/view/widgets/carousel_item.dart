import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class CarouselItem extends StatelessWidget {
  final CampaignModel carouselModel;
  const CarouselItem({super.key, required this.carouselModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                carouselModel.image,
                width: double.infinity,
                height: 180.h,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: 180.h,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: [Colors.black.withOpacity(0), Colors.black],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, left: 14, right: 14, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 73.0.h,
                  ),
                  Text(
                    carouselModel.title,
                    style: AppStyles.textStyle15.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                      .animate()
                      .fadeIn() // uses `Animate.defaultDuration`
                      .scale() // inherits duration from fadeIn
                      .move(delay: 300.ms, duration: 1000.ms),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    carouselModel.subTitle,
                    style: AppStyles.textStyle12.copyWith(
                      color: AppColors.white,
                    ),
                  )
                      .animate()
                      .fadeIn()
                      .scale()
                      .move(delay: 300.ms, duration: 1000.ms),
                ],
              ),
            ),
          ],
        )
      ]),
    ).animate().fadeIn().scale().move(delay: 300.ms, duration: 1000.ms);
  }
}

class CampaignModel {
  final String image;
  final String title;
  final String subTitle;

  CampaignModel(
      {required this.image, required this.title, required this.subTitle});
}

List<CampaignModel> dummyCampiagnsData = [
  CampaignModel(
    image: AppImages.campiagn,
    title: AppText.carouselTitle,
    subTitle: AppText.carouselSubTitle,
  ),
  CampaignModel(
    image: AppImages.campiagn,
    title: AppText.carouselTitle,
    subTitle: AppText.carouselSubTitle,
  ),
  CampaignModel(
    image: AppImages.campiagn,
    title: AppText.carouselTitle,
    subTitle: AppText.carouselSubTitle,
  ),
];
