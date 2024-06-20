import 'package:aoun_tu/core/utls/loggers.dart';
import 'package:aoun_tu/features/posts/data/repos/post_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/utls/my_hive.dart';
import '../../../data/models/post_model.dart';
import 'get_posts_states.dart';

class GetPostsCubit extends Cubit<GetPostsStates> {
  GetPostsCubit({required this.postsRepo}) : super(GetPostsInitial());

  final PostsRepo postsRepo;
  List<PostModel> myPosts = [];
  List<PostModel> myLikesPosts = [];

  Future<void> getPosts({int page = 0}) async {
    emit(GetPostsLoading());

    var result = await postsRepo.getPosts(page: page);
    result.fold((l) {
      AppLogger.print(l.msg.toString());
      AppLogger.print(l.statusCode.toString());
      emit(GetPostsFailure(errorMessage: l.msg));
    }, (r) {
      myPosts = r
          .where((element) =>
              element.userId == Hive.box(AppHive.userBox).get(AppHive.idKey))
          .toList();

      myLikesPosts = r.where((element) => element.isUserLike == true).toList();
      emit(GetPostsSuccess(posts: r));
    });
  }
}
