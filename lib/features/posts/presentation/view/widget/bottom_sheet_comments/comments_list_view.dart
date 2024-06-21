import 'package:flutter/material.dart';

import 'comment_widget.dart';

class CommentsListView extends StatelessWidget {
  const CommentsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (C, index) {
          return const CommentWidget();
        });
  }
}
