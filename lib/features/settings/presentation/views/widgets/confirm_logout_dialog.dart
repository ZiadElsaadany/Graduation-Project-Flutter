import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/features/auth/presentation/view/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';

class ConfirmLogOutDialog extends StatelessWidget {
  const ConfirmLogOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: AppColors.white,
      title: Center(
        child: Text("هل متأكد من تسجيل الخروج؟",
        style: AppStyles.textStyle16,
        ),
      ),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            color: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
color: AppColors.mainColor
              )
            ),
            onPressed: ( )  {
            context.pop();
          } ,child:  Text("الغاء",
            style: AppStyles.textStyle14.copyWith(
              color: AppColors.black
            ),

          ), ),

          MaterialButton(
            color: AppColors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                    color: AppColors.mainColor
                )
            ),
            onPressed: ( )  {

              AppHive.removeToken().then((value)  {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (C) {
                  return const LoginScreen();
                }), (route) => false);
              });

            } ,child:  Text("تأكيد",  style: AppStyles.textStyle14.copyWith(
              color: AppColors.white
          ),), ),
        ],
      ),
    );
  }
}
