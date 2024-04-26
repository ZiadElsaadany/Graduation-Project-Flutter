import 'package:aoun_tu/core/utls/loggers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/toast.dart';
import '../../../data/models/post_model.dart';
import '../../controller/like_controller/like_cubit.dart';
import '../../controller/like_controller/like_states.dart';
import 'bottom_sheet_comments/comments_sheet_view.dart';

class LikesAndComments extends StatefulWidget {
  const LikesAndComments({super.key, required this.posts, required this.index});

  final List<PostModel>posts;
  final int index;

  @override
  State<LikesAndComments> createState() => _LikesAndCommentsState();
}

class _LikesAndCommentsState extends State<LikesAndComments> {
  @override
  Widget build(BuildContext context) {
    var cubit  = BlocProvider.of<LikeCubit>(context);

    AppLogger.print("LikeBuild");
    return    BlocConsumer<LikeCubit, LikeStates>(
  listener: (context, state) {
   if(state is LikeFailure){
     showToast(title: state.errorMessage, color: AppColors.red);
     widget.posts[widget.index]=widget.posts[widget.index].copyWith(
         numberOfLikes: widget.posts[widget.index].numberOfLikes-1
     );
     widget.posts[widget.index] =   widget.posts[widget.index].copyWith(
         isUserLike: !widget.posts[widget.index].isUserLike
     );
   }
  },
  builder: (context, state) {
    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {

                cubit.like(postId: widget.posts[widget.index].postId);

            setState(() {
              widget.posts[widget.index] =   widget.posts[widget.index].copyWith(
                  isUserLike: !widget.posts[widget.index].isUserLike
              );
              if(!widget.posts[widget.index].isUserLike ==false){
                widget.posts[widget.index]=widget.posts[widget.index].copyWith(
                  numberOfLikes: widget.posts[widget.index].numberOfLikes+1
                );
              }else{
                widget.posts[widget.index]=widget.posts[widget.index].copyWith(
                    numberOfLikes: widget.posts[widget.index].numberOfLikes-1
                );
              }
            });
              },
              child:  Icon(

                widget.posts[widget.index].isUserLike == true?  Icons.favorite_rounded:Icons.favorite_border,
                color: AppColors.mainColor,
                size: 28,
              ),
            ),
            Text(
              widget.posts[widget.index].numberOfLikes.toString(),
              style: AppStyles.textStyle12
                  .copyWith(color: AppColors.mainColor),
            ),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        Column(
          children: [
            InkWell(
              onTap: () {
                // show comments sheet
                showModalBottomSheet(
                    isScrollControlled: true,
                    elevation: 0
                    ,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15) ,
                            topRight:Radius.circular(15) )
                    ),
                    enableDrag: true,
                    useSafeArea: true,
                    // showDragHandle: true,
                    backgroundColor: AppColors.white,
                    context: context, builder: ( c )  {
                  return CommentsSheetView();
                } );

              },
              child: Image.asset(
                AppImages.comment,
                width: 30,
                height: 30,
              ),
            ),
            Text(
              widget.posts[widget.index].numberOfComments.toString(),
              style: AppStyles.textStyle12
                  .copyWith(color: AppColors.mainColor),
            ),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        Column(
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                AppImages.bookmark,
                width: 30,
                height: 30,
              ),

            ),
            Text(
              "",
              style: AppStyles.textStyle12
                  .copyWith(color: AppColors.mainColor),
            ),
          ],
        )
      ],
    );
  },
);
  }
}
