import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';

class CustomLogoAndTitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function() onBackPress;
  final Function() onActionPress;

  const CustomLogoAndTitleAppBar({
    Key? key,
    required this.title,
    required this.onBackPress,
    required this.onActionPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        title,
        style: AppStyles.font16BlueBold,
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: onBackPress,
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: AppColors.mainColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: onActionPress,
          icon: Image.asset(
            AppImages.misrElkher,
            width: 35, // Adjust width according to your needs
            height: 35, // Adjust height according to your needs
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0); // Default AppBar height + Divider height
}
