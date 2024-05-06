import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingViewImage extends StatelessWidget {
  const OnBoardingViewImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                Image.asset(
                AppImages.backGround,
                fit: BoxFit.fill,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
              ),]
            ),
            FadeInDown(
              duration: const Duration(seconds: 1),
              child: AspectRatio(
                aspectRatio: constraints.maxHeight* 2 / constraints.maxHeight*1,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
