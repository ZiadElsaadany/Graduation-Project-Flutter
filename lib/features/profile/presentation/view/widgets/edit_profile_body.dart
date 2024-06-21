import 'package:aoun_tu/features/profile/presentation/view/widgets/switch_text_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/my_hive.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/text.dart';
import '../../../../../core/utls/toast.dart';
import '../../../../settings/presentation/views/widgets/custom_app_bar.dart';
import '../../../../settings/presentation/views/widgets/saveChangeButton.dart';
import '../../../../settings/presentation/views/widgets/setting_text_form_field.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const CustomAppBar(
                text: "اعدادات الملف الشخصي",
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    verticalSpace(24),
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.mainColor,
                          radius: 60.5.r,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 60.r,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(55.r),
                              child: CachedNetworkImage(
                                width: 110.w,
                                height: 110.h,
                                fit: BoxFit.cover,
                                imageUrl: Hive.box(AppHive.userBox)
                                    .get(AppHive.imageKey),
                                placeholder: (context, url) =>
                                    const CircleAvatar(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 3,
                          right: 12,
                          child: GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor: AppColors.mainColor,
                              child: Icon(
                                Icons.mode_edit_outline_rounded,
                                color: AppColors.white,
                                size: 20.h,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    verticalSpace(54),
                    SettingTextFormField(
                      lable: 'الاسم',
                      keyboardType: TextInputType.name,
                      initialValue:
                          Hive.box(AppHive.userBox).get(AppHive.nameKey),
                      hintText: AppText.enterYourName,
                      validator: (value) {
                        if (value!.isEmpty) return AppText.requiredField;
                        if (value.length < 3) {
                          return "الاسم غير صالح";
                        } else {
                          return null;
                        }
                      },
                    ),
                    verticalSpace(40),
                    const SwitchTextField(
                      label: "المحفوظات",
                      text: "اظهار المحفوظات الي العامة",
                    ),
                    verticalSpace(40),
                    const SwitchTextField(
                      label: "الاعجابات",
                      text: "اظهار الأعجابات الي العامة",
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
        Align(
            alignment: Alignment.bottomCenter,
            child: SaveChangesButton(onTap: () {
              showToast(title: "تم حفظ التغييرات", color: AppColors.green);
              Future.delayed(const Duration(seconds: 1), () => context.pop());
            })),
      ],
    );
  }
}
