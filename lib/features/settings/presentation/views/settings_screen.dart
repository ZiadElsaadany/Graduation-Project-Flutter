import 'package:aoun_tu/features/settings/presentation/views/widgets/log_out_widget.dart';
import 'package:aoun_tu/features/settings/presentation/views/widgets/setting_widget.dart';
import 'package:aoun_tu/shared/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utls/images.dart';
import '../../../../core/utls/routers.dart';
import '../../../posts/presentation/controller/get_posts_controller/get_posts_cubit.dart';
import '../../data/models/setting_model.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  List<SettingModel> settings(BuildContext context) => [
        SettingModel(
            title: "الملف الشخصي",
            image: AppImages.profileIcon,
            onTap: () async {
              await BlocProvider.of<GetPostsCubit>(context).getPosts(page: 0);
              GoRouter.of(context).push(AppRouter.kProfileScreen);
            }),
        SettingModel(
            title: "المعلومات الشخصية",
            image: AppImages.personalInfoIcon,
            onTap: () {
              GoRouter.of(context).push(AppRouter.kPersonalInfoView);
            }),
        SettingModel(
            title: "تعديل كلمة المرور",
            image: AppImages.passwordEditIcon,
            onTap: () {
              GoRouter.of(context).push(AppRouter.kEditPasswordView);
            }),
        SettingModel(
            title: "المساعدة والدعم",
            image: AppImages.technicalSupportIcon,
            onTap: () {}),
        SettingModel(
            title: "حول التطبيق", image: AppImages.aboutAppIcon, onTap: () {}),
        SettingModel(
            title: "تقييم التطبيق",
            image: AppImages.appEvaluationIcon,
            onTap: () {}),
        SettingModel(
            title: "مشاركة التطبيق",
            image: AppImages.appShareIcon,
            onTap: () {}),
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
                itemCount: settings(context).length,
                itemBuilder: (c, index) {
                  return SettingWidget(
                    settingModel: settings(context)[index],
                  );
                },
                separatorBuilder: (c, index) {
                  return SizedBox(
                    height: 18.h,
                  );
                }),
          ),
          const SliverToBoxAdapter(
            child: LogOutWidget(),
          )
        ],
      ),
    );
  }
}
