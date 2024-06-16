import 'package:flutter/material.dart';
import '../../../../../core/utls/styles.dart';

class CharityDonationValuesContainer extends StatelessWidget {
  const CharityDonationValuesContainer({
    Key? key,
    required this.text, required this.color, required this.textColor, required this.borderColor,

  }) : super(key: key);

  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;


  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: size.width*0.038, vertical: size.height*0.02),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor)),
      child: Text(
          textAlign: TextAlign.center,
          text,
          style: AppStyles.textStyle17.copyWith(color: textColor)

      ),
    );
  }
}
