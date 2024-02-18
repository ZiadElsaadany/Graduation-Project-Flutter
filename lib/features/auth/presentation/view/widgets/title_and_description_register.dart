import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/register/register_cubit.dart';
import 'package:flutter/material.dart';

class TitleAndDescriptionWidget extends StatelessWidget {
  const TitleAndDescriptionWidget({Key? key,required this.registerOptionsModel}) : super(key: key);

  final RegisterOptionsModel registerOptionsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(registerOptionsModel.title ,
        style: AppStyles.textStyle17,
        )  ,
        const SizedBox(
          height: 18,
        ),
        Text(registerOptionsModel.description,
        textAlign: TextAlign.center,
        style: AppStyles.textStyle12.copyWith(
          color: AppColors.text1
        ),
        )  ,
        const SizedBox(
          height: 37,
        ),

      ],
    );
  }
}
