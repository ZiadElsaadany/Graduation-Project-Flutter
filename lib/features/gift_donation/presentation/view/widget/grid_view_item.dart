import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem(
      {Key? key, required this.color, required this.image, required this.text})
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
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: constraints.maxWidth*0.05, vertical: constraints.maxHeight*0.07),
                child: Column(
                  children: [
                    Text(
                      text,
                      style: AppStyles.textStyle15bold
                          .copyWith(color: AppColors.white),
                    ),
                     SizedBox(
                      height: constraints.maxHeight*0.07,
                    ),
                    Image.asset(
                      image,
                      scale: 1,
                      height: constraints.maxHeight*0.3,
                      width: constraints.maxWidth*0.3,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset(
                      AppImages.giftBackGround,
                      height: constraints.maxHeight*0.4,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
