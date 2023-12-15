import 'package:flutter/material.dart';

class OnBoardingViewImage extends StatelessWidget {
  const OnBoardingViewImage({super.key, required this.image});
   final String image;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height*0.6 ,
        )
      ],
    );
  }


}
