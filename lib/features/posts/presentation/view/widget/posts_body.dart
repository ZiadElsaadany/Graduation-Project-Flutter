import 'package:aoun_tu/shared/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

import 'post_list.dart';
import 'write_post_bar.dart';

class PostsBody extends StatelessWidget {
  const PostsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:HomeAppBar()
          ),
          SliverToBoxAdapter(
            child: Divider(
              thickness: 1,
            ),
          ),
         SliverToBoxAdapter(
           child:  WritePostBar(),
         ),
          PostsList(),
        ],
      ),
    );
  }
}
