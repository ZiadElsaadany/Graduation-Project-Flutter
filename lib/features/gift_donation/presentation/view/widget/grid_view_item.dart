import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem(
      {Key? key, required this.color, required this.text, required this.image})
      : super(key: key);
  final Color color;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
            child: Column(
              children: [
                Text(
                  text,
                  style: AppStyles.textStyle15bold
                      .copyWith(color: AppColors.white),
                ),
                const SizedBox(
                  height: 12,
                ),
                Image.asset(
                  image,
                  scale: 1,
                  height: 47,
                  width: 44,
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppImages.giftBackGround,
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
