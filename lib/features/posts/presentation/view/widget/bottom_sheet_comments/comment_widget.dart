
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/features/posts/presentation/view/widget/circle_image.dart';
import 'package:comment_tree/data/comment.dart';
import 'package:comment_tree/widgets/comment_tree_widget.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: CommentTreeWidget<Comment, Comment>(
          Comment(
              avatar: 'null',
              userName: 'Ziad Elsaadany',
              content: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيله'),

          [
            Comment(
                avatar: 'null',
                userName: 'نورهان سعد',
                content: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيله'),
            Comment(
                avatar: 'null',
                userName: 'سلسبيل اسلام',
                content: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيله'),

          ],
          treeThemeData:
          const TreeThemeData(lineColor: AppColors.mainColor, lineWidth: 1),
          avatarRoot: (context, data) => const PreferredSize(
            preferredSize: Size.fromRadius(3),
            child: CircleForImage(image: AppImages.profileImageFromAsset)
          ),
          avatarChild: (context, data) => const PreferredSize(
            preferredSize: Size.fromHeight(20),
            child:CircleForImage(image: AppImages.profileImageFromAsset),
          ),
          contentChild: (context, data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Text(data.userName!,
                              style: AppStyles.textStyle12.copyWith(
                                  color: AppColors.mainColor,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Text("منذ خمس دقائق" ,
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.text2),

                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '${data.content}',
                          style: AppStyles.textStyle14.copyWith(
                              fontFamily: GoogleFonts.arimo().fontFamily
                          )
                      ),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                  child: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child:         Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          const Icon(Icons.favorite_border,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(width: 26.w,),
                          Image.asset(AppImages.comment, height: 30 ,width: 30,)
                        ],
                      ),
                    )
                  ),
                )
              ],
            );
          },
          contentRoot: (context, data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:  EdgeInsets.symmetric(vertical: 20.h, horizontal: 8.w),
                  decoration: BoxDecoration(
                      color: AppColors.greyComment,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Text("زياد جمال الدين السعدني",
                              style: AppStyles.textStyle12.copyWith(
                                  color: AppColors.mainColor,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Text("منذ خمس دقائق" ,
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColors.text2),

                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '${data.content}',
                        style: AppStyles.textStyle15.copyWith(
                          fontFamily: GoogleFonts.arimo().fontFamily
                        )
                      ),
                    ],
                  ),
                ),

                DefaultTextStyle(
                  style:AppStyles.textStyle18,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child:  Row(
                    children: [
                      const Icon(Icons.favorite_border,
                        color: AppColors.mainColor,
                      ),
                      SizedBox(width: 26.w,),
                      Image.asset(AppImages.comment, height: 30 ,width: 30,)
                    ],
                  ),
                  ),
                )
              ],
            );
          },
        ),
      )
    );
  }
}
