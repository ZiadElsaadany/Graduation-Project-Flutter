import 'package:aoun_tu/features/settings/data/models/setting_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key, required this.settingModel});

  final SettingModel settingModel;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      tileColor: AppColors.settingListTileColor.withOpacity(0.2),
      title: Text(settingModel.title,
      style: AppStyles.textStyle14.copyWith(
        color: AppColors.mainColor,
        fontWeight: FontWeight.w500
      ),
      ),
      leading: SvgPicture.asset(settingModel.image,),
      onTap: settingModel.onTap,
    );
  }
}
