import 'package:aoun_tu/features/posts/presentation/view/widget/posts_body.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: PostsBody(),
      ),
    );
  }
}
