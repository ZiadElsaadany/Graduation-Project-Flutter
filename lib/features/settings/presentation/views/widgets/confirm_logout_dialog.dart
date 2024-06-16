import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/routers.dart';

class ConfirmLogOutDialog extends StatelessWidget {
  const ConfirmLogOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: AppColors.white,
      title: Center(
        child: Text(
          "هل متأكد من تسجيل الخروج؟",
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
                side: const BorderSide(color: AppColors.mainColor)),
            onPressed: () {
              context.pop();
            },
            child: Text(
              "الغاء",
              style: AppStyles.textStyle14.copyWith(color: AppColors.black),
            ),
          ),
          MaterialButton(
            color: AppColors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: AppColors.mainColor)),
            onPressed: () {
              Hive.deleteBoxFromDisk(AppHive.userBox);
              AppHive.removeToken().then((value) {
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (C) {
                //   return const LoginScreen();
                // }), (route) => false);
                GoRouter.of(context).go(AppRouter.kLogin);
              });
            },
            child: Text(
              "تأكيد",
              style: AppStyles.textStyle14.copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
