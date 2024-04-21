import 'package:aoun_tu/features/auth/data/models/login_model.dart';

abstract class LoginApiStates {

}
class LoginApiInitialState extends LoginApiStates{ }
class LoginLoadingState extends LoginApiStates{ }
class LoginSuccessState extends LoginApiStates{
  final LoginModel loginModel;
  LoginSuccessState  (
  {
    required this.loginModel
}
      ) ;
}
class LoginFailureState extends LoginApiStates{
  final String message ;
  LoginFailureState(  {
    required this.message
});
}