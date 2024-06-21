import 'package:aoun_tu/features/posts/data/models/post_model.dart';

abstract class GetPostsStates {}

class GetPostsInitial extends GetPostsStates {}

class GetPostsLoading extends GetPostsStates {}

class GetPostsSuccess extends GetPostsStates {
  final List<PostModel> posts;
  GetPostsSuccess({required this.posts});
}

class GetPostsFailure extends GetPostsStates {
  final String errorMessage;
  GetPostsFailure({required this.errorMessage});
}

class GetBookMarksLoading extends GetPostsStates {}

class GetBookMarksSuccess extends GetPostsStates {
  final List<PostModel> posts;
  GetBookMarksSuccess({required this.posts});
}

class GetBookMarksFailure extends GetPostsStates {
  final String errorMessage;
  GetBookMarksFailure({required this.errorMessage});
}
