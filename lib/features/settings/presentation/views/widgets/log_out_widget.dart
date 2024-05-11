import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utls/colors.dart';
import 'confirm_logout_dialog.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        color: AppColors.red,
        onPressed: ( ) {
          showDialog(context: context, builder: (c) {
            return ConfirmLogOutDialog();
          } );
        } ,child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("تسجيل الخروج",
            style: AppStyles.textStyle14.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(width: 8,),
            SvgPicture.asset(AppImages.logoutImage)
          ],
                ),
        ),),
    );
  }
}
