import 'package:aoun_tu/constants.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/posts/presentation/view/widget/circle_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/utls/my_hive.dart';

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
          padding: const EdgeInsets.all(15),
          children: [
            const Divider(
              color: AppColors.mainColor,
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(17.5),
                  child: CachedNetworkImage(
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
                    imageUrl: Hive.box(AppHive.userBox).get(AppHive.imageKey),
                    placeholder: (context, url) => const CircleAvatar(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),                  const SizedBox(width: 8,),
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
            const SizedBox(height: 15,),

            TextFormField(

              maxLines: 5,
              minLines: 3,
              decoration: InputDecoration(
                hintText: '''هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء 
لصفحة ما سيلهي القارئ عن الترك''',
                enabled: true,
                 filled: true,
                fillColor: AppColors.greyComment, 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                ),     enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                ),     focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                ),
              ),
            ), 
            const SizedBox(height: 16,),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Image.asset("assets/images/clothes.png"),
                const CircleAvatar(
                    backgroundColor: AppColors.black,
                    child: Icon(Icons.close,color: AppColors.white,)),
              ],
            ),
            const SizedBox(height: 16,),
            MaterialButton(onPressed: ( ) { } ,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10
                )
              ),
              color: AppColors.mainColor,
              textColor: AppColors.white,
            minWidth: double.infinity,child:  Text("نشر"  ,
            style: AppStyles.font16WhiteBold,
            ),
            )
          ],
        )
      ),
    );
  }
}
