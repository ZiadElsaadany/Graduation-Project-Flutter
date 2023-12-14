import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatelessWidget {
    const CustomTextFormField(
       {Key? key, required this.hintText,  this.secure = false, this.onChanged, this.validator, required this.textEditingController,  this.secureWidget
       }) : super(key: key);

  final String hintText;
   final bool secure;
   final Widget? secureWidget ; // if secure  = true
  final String? Function(String?)? validator;
  final TextEditingController textEditingController;
    final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,

      decoration:  BoxDecoration(
        borderRadius:  BorderRadius.circular(10),
        border: Border.all(color: AppColors.mainColor)
      ),
      child: Row(
        children: [
          const SizedBox(width: 6,),

       SvgPicture.asset(AppImages.emailIcon),
          const SizedBox(width: 6,),
          Container(
            height: 50,
            width:1.5,
            color: AppColors.mainColor,
          ),
          const SizedBox(width: 6,),

          Expanded(
            child: TextFormField(

              onChanged: onChanged,
              controller: textEditingController,
              validator: validator,



              decoration: InputDecoration(

                  contentPadding:  const EdgeInsets.symmetric(
                      vertical: 10,
                      // horizontal: 15
                  ),



                  suffixIcon:  secure ?

                  secureWidget


                      :const SizedBox() ,
                  hintText: hintText,
                  hintStyle:  AppStyles.textStyle11.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.mainColor.withOpacity(0.7)
                  ),
                  border: InputBorder.none
                  // border: AppColors.outlineInputBorder(borderColor: AppColors.mainColor),
                  // enabledBorder: AppColors.outlineInputBorder(borderColor: AppColors.mainColor),
                  // focusedBorder: AppColors.outlineInputBorder(borderColor: AppColors.mainColor)

              ),


            ),
          ),
        ],
      ),
    );
  }
}
