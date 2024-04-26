import 'package:aoun_tu/features/posts/data/models/post_model.dart';

abstract class GetPostsStates{ }
class GetPostsInitial extends  GetPostsStates { }
class GetPostsLoading extends  GetPostsStates { }
class GetPostsSuccess extends  GetPostsStates {
  final List<PostModel> posts ;
  GetPostsSuccess(
  {
    required this.posts
}
      );
}
class GetPostsFailure extends  GetPostsStates {
  final String errorMessage ;
  GetPostsFailure(
  {
    required this.errorMessage
}
      );
}