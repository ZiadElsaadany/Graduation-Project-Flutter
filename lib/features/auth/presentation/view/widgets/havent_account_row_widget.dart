import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/routers.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum LoginOrRegister { LOGIN, REGISTER }

class HaventAccountRowWidget extends StatelessWidget {
  const HaventAccountRowWidget(
      {Key? key,
      required this.underLineText,
      required this.text,
      required this.loginOrRegister})
      : super(key: key);

  final String underLineText;
  final String text;
  final LoginOrRegister loginOrRegister;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$text ",
              style: AppStyles.textStyle11.copyWith(
                  color: AppColors.mainColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            GestureDetector(
              onTap: () {
                if (loginOrRegister == LoginOrRegister.LOGIN) {
                  GoRouter.of(context).push(AppRouter.kRegister);
                } else {
                  GoRouter.of(context).pushReplacement(AppRouter.kLogin);
                }
              },
              child: Text(
                underLineText,
                style: AppStyles.textStyle11.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainColor,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          AppText.or,
          style: AppStyles.textStyle14,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          AppText.enterAsAGuest,
          style: AppStyles.textStyle13.copyWith(color: AppColors.mainColor),
        ),
      ],
    );
  }
}
