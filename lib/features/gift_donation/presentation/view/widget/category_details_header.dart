import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CategoryDetailsHeader extends StatelessWidget {
  const CategoryDetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      AppText.garment,
                      style: AppStyles.font18Bold
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                  Image.asset(
                    AppImages.gifts,
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
              const SizedBox(height: 5,),
            ],
          ),
          SvgPicture.asset(AppImages.halfGiftBackGround)
        ],
      ),
    );
  }
}
