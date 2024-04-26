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