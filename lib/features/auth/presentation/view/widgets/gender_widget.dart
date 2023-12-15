import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({Key? key}) : super(key: key);

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(Duration(
    //   seconds: 1
    // ))
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,

          width: 100,
          height: 100,
          decoration:  BoxDecoration(
            color: AppColors.mainColor.withOpacity(0.1),
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.mainColor ,
            width: 2
            )
          ),
          child: SvgPicture.asset(AppImages.boyIcon ,
            width: 15,
            height: 41,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration:  BoxDecoration(
            color: AppColors.mainColor.withOpacity(0.1),
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.mainColor,
                width: 2

            )
          ),
          child: SvgPicture.asset(AppImages.girlIcon,
             width: 15,
            height: 41,
          ),
        ),
      ],
    );
  }
}
