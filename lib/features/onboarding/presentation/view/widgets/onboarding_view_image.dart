import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:flutter/material.dart';

class OnBoardingViewImage extends StatelessWidget {
  const OnBoardingViewImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppImages.backGround,
          fit: BoxFit.cover,
        ),
        FadeInDown(
          duration: Duration(
            milliseconds: 700
          ),
          child: AspectRatio(
            aspectRatio: 2/1,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
