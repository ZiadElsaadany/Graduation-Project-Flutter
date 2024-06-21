import 'package:aoun_tu/features/posts/data/repos/post_repo.dart';
import 'package:bloc/bloc.dart';

import 'like_states.dart';

class LikeCubit extends Cubit<LikeStates> {
  LikeCubit({required this.postsRepo}) : super(LikeInitialState());
  final PostsRepo postsRepo;

  Future<void> like({required int postId}) async {
    emit(LikeLoading());

    var result = await postsRepo.like(postId: postId);
    result.fold((l) {
      emit(LikeFailure(errorMessage: l.msg));
    }, (r) {
      emit(LikeSuccess());
    });
  }

  Future<void> bookMark({required int postId}) async {
    emit(BookMarkLoading());

    var result = await postsRepo.bookMarkPost(postId: postId);
    result.fold((l) {
      emit(BookMarkFailure(errorMessage: l.msg));
    }, (r) {
      emit(BookMarkSuccess());
    });
  }
}
