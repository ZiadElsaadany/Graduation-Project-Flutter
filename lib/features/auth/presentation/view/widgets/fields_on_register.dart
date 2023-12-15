import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/constants.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/add_photo_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/field.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/title_and_description_register.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/register/register_cubit.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/register/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/text.dart';
import 'button.dart';
import 'gender_widget.dart';

class FieldsONRegister extends StatefulWidget {
  const FieldsONRegister({Key? key}) : super(key: key);

  @override
  State<FieldsONRegister> createState() => _FieldsONRegisterState();
}

class _FieldsONRegisterState extends State<FieldsONRegister> {
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  TextEditingController confirmPasswordController= TextEditingController();
  TextEditingController nameController= TextEditingController();
  TextEditingController phoneController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cubit  = BlocProvider.of<RegisterCubit>(context) ;

    return SliverToBoxAdapter(
      child: BlocBuilder<RegisterCubit, RegisterStates>(
        builder: (context, state) {
          return Column(
            children: [
              TitleAndDescriptionWidget(
                registerOptionsModel: cubit.registerOptions[cubit.progressCounter -
                    1],
              ),







              cubit.progressCounter==1 ?


              FadeInRight(
                duration: const Duration(
                    milliseconds: 700
                ),
                child: CustomTextFormField(
                  iconImage: AppImages.emailIcon,
                  hintText: AppText.enterYourEmail,
                  textEditingController: emailController,
                ),
              )
                  :  cubit.progressCounter==2 ? Column(
                    children: [
                      FadeInLeft(
                duration: const Duration(
                        milliseconds: 700
                ),
                child: CustomTextFormField(
                      iconImage: AppImages.passwordIcon,

                      secure: true,
                      obscureText: cubit.secure,
                      secureWidget: IconButton(
                        icon: SvgPicture.asset(cubit.secure
                            ? AppImages.visibleEye
                            : AppImages.notVisibleEye),
                        onPressed: () {
                          cubit.changeSecureLogin();
                        },
                      ),
                      hintText: AppText.enterYourPassword,
                      textEditingController: passwordController,
                ),
              ),
                      const SizedBox(
                        height: 19.9,
                      ),
                      FadeInLeft(
                duration: const Duration(
                        milliseconds: 700
                ),
                child: CustomTextFormField(
                      iconImage: AppImages.passwordIcon,

                      secure: true,
                      obscureText: cubit.confirmSecure,
                      secureWidget: IconButton(
                        icon: SvgPicture.asset(cubit.confirmSecure
                            ? AppImages.visibleEye
                            : AppImages.notVisibleEye),
                        onPressed: () {
                          cubit.changeConfirmSecure();
                        },
                      ),
                      hintText: AppText.confirmPassword,
                      textEditingController: confirmPasswordController,
                ),
              ),
                    ],
                  ) :

              cubit.progressCounter==3 ?
              FadeInRight(
                duration: const Duration(
                    milliseconds: 700
                ),
                child: CustomTextFormField(
                  iconImage: AppImages.personIcon,
                  hintText: AppText.enterYourName,
                  textEditingController: nameController,
                ),
              )
                  :  cubit.progressCounter==4 ? FadeInRight(
                duration: const Duration(
                    milliseconds: 700
                ),
                child: CustomTextFormField(
                  lst: [FilteringTextInputFormatter.digitsOnly],
                  textInputType: TextInputType.number,

                  iconImage: AppImages.phoneIcon,
                  hintText: AppText.enterYourPhone,
                  textEditingController: phoneController,
                ),
              ):
              const SizedBox()
              ,


            cubit.progressCounter == 5 ?  const GenderWidget(): const SizedBox(),
              cubit.progressCounter==6? const AddPhotoWidget() :const SizedBox(),

              const SizedBox(height: 55,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(

                    onPressed: (  )  {
                      checkProgressCounter(cubit);

                    },
                    color:AppColors.mainColor ,
                    txt: AppText.next,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }


  checkProgressCounter (cubit )  {
    if(cubit.progressCounter == 1 &&emailController.text.trim().isEmpty ){

      Constants.snackBar(context: context, text: AppText.enterYourEmail, color: AppColors.red);


    }
    else if(
    cubit.progressCounter == 1 &&
        (!cubit.emailRegex.hasMatch(emailController.text.trim()) )
    )  {
      Constants.snackBar(context: context, text:AppText.correctEmail , color: AppColors.red);


    }
    else if(
    cubit.progressCounter == 2 &&
        (passwordController.text.trim().isEmpty )
    )  {
      Constants.snackBar(context: context, text: AppText.enterYourPassword, color: AppColors.red);


    }

    else if(
    cubit.progressCounter == 2 &&
        (!cubit.passwordRegex.hasMatch(passwordController.text.trim()) )
    )  {
      Constants.snackBar(context: context, text: AppText.correctPassword, color: AppColors.red);


    }
    else if(
    cubit.progressCounter == 2 &&
        (confirmPasswordController.text.trim().isEmpty )
    )  {
      Constants.snackBar(context: context, text: AppText.confirmPassword, color: AppColors.red);


    }else if(
    cubit.progressCounter == 2 &&
        (confirmPasswordController.text.trim()  !=passwordController.text.trim() )
    )  {
      Constants.snackBar(context: context, text: AppText.requiredPasswordMatching, color: AppColors.red);


    }else if(
    cubit.progressCounter == 3 &&
        (nameController.text.trim().isEmpty)
    )  {
      Constants.snackBar(context: context, text: AppText.enterYourName, color: AppColors.red);


    }else if(
    cubit.progressCounter == 4&&
        (phoneController.text.trim().isEmpty)
    )  {
      Constants.snackBar(context: context, text: AppText.enterYourPhone, color: AppColors.red);


    }else if(
    cubit.progressCounter == 5&&
       cubit.boyOrGirl ==BoyOrGirl.NONE
    )  {
      Constants.snackBar(context: context, text: AppText.tellYourGender, color: AppColors.red);


    }

    else {
      cubit.plusProgressCounter();

    }
  }



}
