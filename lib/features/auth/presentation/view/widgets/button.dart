import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key, required this.txt ,

   this.color, this.onPressed
   }) : super(key: key);

   final void Function()? onPressed;
  final String txt;
  Color ?color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.4,
      child: MaterialButton(onPressed:onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        height: 50,
        minWidth: 170,
        color:  color??AppColors.text2,

      child: Text(
        txt ,
        style: AppStyles.textStyle20.copyWith(
          color: AppColors.white ,
          fontWeight: FontWeight.bold
        ),
      ),
      ),
    );
  }
}
