import 'package:flutter/material.dart';

import '../../../../../core/utls/images.dart';

class CircleForImage extends StatelessWidget {
  const CircleForImage({Key? key, required this.image}) : super(key: key);
final String image ;
  @override
  Widget build(BuildContext context) {
    return   ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: Image.asset(
       image,
        width: 34,
        height: 34,
      ),
    );
  }
}
