import 'package:aoun_tu/core/utls/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'comment_field.dart';
import 'comment_widget.dart';
import 'comments_list_view.dart';

class CommentsSheetBody extends StatelessWidget {
  const CommentsSheetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
           SizedBox(height: 15.h,),
          Container(height: 5,
            width: 100.w,

            decoration: BoxDecoration(
              color: AppColors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5)
            ),
          ),
          SizedBox(height: 15.h,),

          const Divider(
            color: AppColors.mainColor,
            thickness: 1,
            height: 1,
          ),
           SizedBox(height: 30.h,),


          Expanded(child: CommentsListView()),

          CommentField(),

        ],
      );
  }
}


