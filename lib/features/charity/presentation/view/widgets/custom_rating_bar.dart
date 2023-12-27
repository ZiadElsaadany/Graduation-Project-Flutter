import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/utls/colors.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({super.key, required this.rating});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      itemSize: 15,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemBuilder: (context, _) => const Icon(
        Icons.star_rate_rounded,
        color: AppColors.yellow2,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
