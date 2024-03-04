import 'package:flutter/material.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';

class DonateAsGiftAppBar extends PreferredSize {
  const DonateAsGiftAppBar(
      {super.key,
      required super.preferredSize,
      required this.title,
      required super.child});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
        ),
        color: AppColors.mainColor,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        title,
        style: AppStyles.textStyle17.copyWith(
          color: AppColors.mainColor,
        ),
      ),
    );
  }
}
