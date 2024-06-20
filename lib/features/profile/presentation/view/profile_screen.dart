import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utls/colors.dart';
import '../../../../core/utls/styles.dart';
import '../../../../core/utls/text.dart';
import 'widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: const ProfileBody(),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                  size: 24,
                )),
          ],
          backgroundColor: AppColors.mainColor,
          title: Text(
            AppText.profile,
            style: AppStyles.font16WhiteBold,
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
