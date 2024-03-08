import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class CommentField extends StatelessWidget {
  const CommentField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: AppColors.mainColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: AppText.addComment,
                hintStyle:
                    AppStyles.textStyle18.copyWith(color: AppColors.mainColor),
                border: Constants.outlineInputBorder(
                    borderColor: Colors.transparent, radius: 15),
                enabledBorder: Constants.outlineInputBorder(
                    radius: 15, borderColor: Colors.transparent),
                focusedBorder: Constants.outlineInputBorder(
                    radius: 15, borderColor: Colors.transparent),
                filled: true,
                fillColor: AppColors.mainColorCommentField),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
