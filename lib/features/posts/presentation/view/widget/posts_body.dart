import 'package:aoun_tu/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

import 'write_post_bar.dart';

class PostsBody extends StatelessWidget {
  const PostsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            Divider(
              thickness: 1,
            ),
            WritePostBar()
          ],
        ),
      ),
    );
  }
}
