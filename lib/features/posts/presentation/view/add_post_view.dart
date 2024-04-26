import 'package:aoun_tu/constants.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/posts/presentation/view/widget/circle_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPostView extends StatelessWidget {
  const AddPostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: Constants.appBar(
          title: AppText.createNewPost
        ),
        body: ListView(
          children: [
            Divider(
              color: AppColors.mainColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleForImage(image: AppImages.profileImageFromAsset),
                  const SizedBox(width: 8,),
                  Expanded(
                    child: Text("Ziad Elsaadany" ,
                    style: AppStyles.textStyle15.copyWith(
                      color: AppColors.mainColor ,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  const SizedBox(width: 8,),

Image.asset(AppImages.photos,
width: 30.w,
  height: 30.h,
)

                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
