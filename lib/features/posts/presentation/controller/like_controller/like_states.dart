abstract class LikeStates {

}
class  LikeInitialState extends LikeStates { }
class  LikeLoading extends LikeStates { }
class  LikeSuccess extends LikeStates { }
class  LikeFailure extends LikeStates {
  final String errorMessage ;
  LikeFailure(
  {
    required this.errorMessage
}
      );
}


class BookMarkLoading extends LikeStates {}

class BookMarkSuccess extends LikeStates {}

class BookMarkFailure extends LikeStates {
  final String errorMessage;
  BookMarkFailure({required this.errorMessage});
}