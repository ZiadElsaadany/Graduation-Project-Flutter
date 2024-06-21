import 'package:aoun_tu/core/widgets/failure_widget_from_api.dart';
import 'package:aoun_tu/features/posts/presentation/controller/get_posts_controller/get_posts_cubit.dart';
import 'package:aoun_tu/features/posts/presentation/controller/get_posts_controller/get_posts_states.dart';
import 'package:aoun_tu/features/posts/presentation/view/widget/post_shimmer/post_shimmer.dart';
import 'package:aoun_tu/shared/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/post_model.dart';
import 'post_list.dart';
import 'write_post_bar.dart';

class PostsBody extends StatefulWidget {
  const PostsBody({super.key});

  @override
  State<PostsBody> createState() => _PostsBodyState();
}

class _PostsBodyState extends State<PostsBody> {
  List<PostModel> posts = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetPostsCubit>(context).getPosts(page: 0);
  }

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<GetPostsCubit>(context);
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          await BlocProvider.of<GetPostsCubit>(context).getPosts(page: 0);
        },
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: HomeAppBar(),
            ),
            const SliverToBoxAdapter(
              child: Divider(
                thickness: 1,
              ),
            ),
            const SliverToBoxAdapter(
              child: WritePostBar(),
            ),
            BlocConsumer<GetPostsCubit, GetPostsStates>(
              listener: (context, state) {
                if (state is GetPostsSuccess) {
                  posts.addAll(state.posts);
                  posts = posts.toSet().toList();
                }
              },
              builder: (context, state) {
                if (state is GetPostsFailure) {
                  return SliverToBoxAdapter(
                      child: FailureWidgetFromApi(
                    errorText: state.errorMessage,
                    onPressed: () {
                      cubit.getPosts(page: 0);
                    },
                  ));
                } else if (posts.isNotEmpty) {
                  return PostsList(
                    posts: posts,
                  );
                } else if (state is GetPostsLoading) {
                  // loading shimmer

                  return const PostsShimmer();
                } else {
                  // empty widget

                  return const SliverToBoxAdapter(
                    child: SizedBox(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
