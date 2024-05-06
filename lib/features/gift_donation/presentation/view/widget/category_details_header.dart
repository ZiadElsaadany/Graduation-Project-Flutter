import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/models/gift_category_model.dart';

class CategoryDetailsHeader extends StatelessWidget {
  const CategoryDetailsHeader({Key? key, required this.giftCategoryModel})
      : super(key: key);
  final GiftCategoryModel giftCategoryModel;

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      padding:  EdgeInsets.symmetric(
        horizontal: size.width*0.02,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: giftCategoryModel.color),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
               SizedBox(
                height: size.width*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: size.width*0.02,),
                    child: Text(
                      giftCategoryModel.title!,
                      style:
                      AppStyles.font18Bold.copyWith(color: AppColors.white),
                    ),
                  ),
                  Image.asset(
                    AppImages.gifts,
                    fit: BoxFit.contain,
                    height: size.height * 0.12,
                    width: size.width * 0.4,
                  ),
                ],
              ),
               SizedBox(
                height: size.height*0.01,
              ),
            ],
          ),
          SvgPicture.asset(AppImages.halfGiftBackGround)
        ],
      ),
    );
  }
}