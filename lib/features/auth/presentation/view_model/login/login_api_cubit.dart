
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_api_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../../core/utls/my_hive.dart';
import '../../../data/repos/auth_repo.dart';

class LoginApiCubit extends Cubit<LoginApiStates> {
  LoginApiCubit (
  {
    required this.authRepo
}
      ) : super(LoginApiInitialState());

  final AuthRepo authRepo ;


  Future<void> login (
  {
    required String email  ,
    required String password
}
      )   async{
    emit(LoginLoadingState());

    var result  = await authRepo.login(email: email, password: password);
    result.fold((l) => emit(LoginFailureState(message: l.msg)), (r) {
      Hive.box(AppHive.tokenAndOnBoardingBox).put(AppHive.tokenKey,r.token);

      emit(LoginSuccessState(loginModel: r));
    });

  }





}
