import 'package:flutter/material.dart';

import '../../../data/models/post_model.dart';
import 'post_item.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key,required this.posts});
final List<PostModel> posts;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 18),
            child: PostItem(index: index,posts: posts,),
          );
        });
  }
}
