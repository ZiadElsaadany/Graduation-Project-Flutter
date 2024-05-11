import 'package:aoun_tu/features/settings/presentation/views/widgets/log_out_widget.dart';
import 'package:aoun_tu/features/settings/presentation/views/widgets/setting_widget.dart';
import 'package:aoun_tu/shared/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/setting_model.dart';

class SettingsScreen extends StatelessWidget {
   SettingsScreen({super.key});
final List<SettingModel> settings =  [
  SettingModel(title: "الملف الشخصي", image: "assets/icons/profile_icon.svg", onTap: () { }),
  SettingModel(title: "المعلومات الشخصية", image: "assets/icons/personal_info_icon.svg", onTap:  () { }),
  SettingModel(title: "تعديل كلمة المرور", image: "assets/icons/password_edit_icon.svg", onTap:  () { }),
  SettingModel(title: "المساعدة والدعم", image: "assets/icons/technical_support_icon.svg", onTap:  () { }),
  SettingModel(title: "حول التطبيق", image: "assets/icons/about_app_icon.svg", onTap:  () { }),
  SettingModel(title: "تقييم التطبيق", image: "assets/icons/app_evaluation_icon.svg", onTap:  () { }),
  SettingModel(title: "مشاركة التطبيق", image: "assets/icons/app_share_icon.svg", onTap:  () { }),
];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(

        slivers: [
          const SliverToBoxAdapter(
            child: HomeAppBar(),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24.0),

            sliver: SliverList.separated(

                itemCount: settings.length,
                itemBuilder: (c,index) {

              return   SettingWidget (
                settingModel: settings[index],
              );
            } , separatorBuilder: (c,index) {
              return SizedBox(height: 18.h,);
            }),
          ),
          SliverToBoxAdapter(
            child: LogOutWidget(),
          )
        ],
      ),
    );
  }
}
