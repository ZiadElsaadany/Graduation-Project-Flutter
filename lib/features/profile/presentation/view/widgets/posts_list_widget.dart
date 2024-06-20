import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../posts/data/models/post_model.dart';
import '../../../../posts/presentation/view/widget/post_item.dart';

class PostsListWidget extends StatelessWidget {
  const PostsListWidget({super.key, required this.posts});
  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsDirectional.only(top: 18.h),
          child: PostItem(
            index: index,
            posts: posts,
          ),
        );
      },
    );
  }
}
