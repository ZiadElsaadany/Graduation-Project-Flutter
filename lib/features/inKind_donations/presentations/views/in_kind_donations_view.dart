import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utls/colors.dart';
import '../../../../core/utls/images.dart';
import '../../../../core/utls/styles.dart';
import 'widgets/in_kind_donation_body.dart';

class InKindDonations extends StatelessWidget {
  const InKindDonations({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Divider(
              color: AppColors.mainColor,
              height: 4,
              thickness: 1,
            ),
          ),
          title: Text(
            AppText.inKindDonations,
            style: AppStyles.font16BlueBold,
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.mainColor,
              )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                AppImages.misrElkher,
                width: 35.w,
                height: 35.h,
              ),
            ),
          ],
        ),
        body: const InKindDonationsBody(),
      ),
    );
  }
}
