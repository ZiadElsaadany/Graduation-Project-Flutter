import 'package:aoun_tu/features/posts/data/models/post_model.dart';

abstract class CreatePostStates { }
class CreatePostInitialState extends CreatePostStates{ }
class CreatePostLoadingState extends CreatePostStates{ }
class CreatePostSuccessState extends CreatePostStates{
  final PostModel postModel ;
  CreatePostSuccessState(
  {
    required this.postModel
}
      );
}
class CreatePostFailureState extends CreatePostStates{
  final String errorMessage ;
  CreatePostFailureState(
  {
    required this.errorMessage
}
      );
}