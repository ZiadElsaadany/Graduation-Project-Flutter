import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatelessWidget {
     CustomTextFormField(


       {Key? key, required this.hintText,  this.secure = false, this.onChanged, this.validator, required this.textEditingController,  this.secureWidget

     ,this.obscureText, required this.iconImage,  this.textInputType=TextInputType.text,  this.lst
       }) : super(key: key);

  final String hintText;
   final bool secure;
   bool ?  obscureText;
   final Widget? secureWidget ; // if secure  = true
  final String? Function(String?)? validator;
  final TextEditingController textEditingController;
    final void Function(String)? onChanged;
    final List<TextInputFormatter> ?  lst ;

    final String iconImage;
    final TextInputType textInputType;
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

       SvgPicture.asset(iconImage),
          const SizedBox(width: 6,),
          Container(
            height: 50,
            width:1.5,
            color: AppColors.mainColor,
          ),
          const SizedBox(width: 6,),

          Expanded(
            child: TextFormField(
              inputFormatters:lst ,
              keyboardType:textInputType ,
onTapOutside: (e) {
  FocusManager.instance.primaryFocus?.unfocus();
} ,
              onChanged: onChanged,
              controller: textEditingController,
              validator: validator,


obscureText: obscureText??false,
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
