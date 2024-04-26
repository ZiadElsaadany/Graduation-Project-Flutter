import 'package:flutter/material.dart';

import 'post_item.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsetsDirectional.only(bottom: 18),
            child: PostItem(),
          );
        });
  }
}
