import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';

class AddPhotoWidget extends StatelessWidget {
  const AddPhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FadeInDown(
      duration: const Duration(
        milliseconds: 700
      ),
      child: GestureDetector(
        onTap: () {
          // cubit.changeBoyOrGirl(BoyOrGirl.BOY);
        },
        child: Container(
          alignment: Alignment.center,

          width: 100,
          height: 100,
          decoration: BoxDecoration(
             color: AppColors.mainColor.withOpacity(0.1)
              ,
              shape: BoxShape.circle,
              border: Border.all(color:
              AppColors.mainColor ,
                  width: 2
              )
          ),
          child: SvgPicture.asset(AppImages.addPhotoIcon,
            width: 15,
            height: 41,
          ),
        ),
      ),
    );
  }
}
