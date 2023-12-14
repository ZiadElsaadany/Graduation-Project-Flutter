import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitial());




  int progress = 2  ;

  int progressCounter= 1 ;
  void plusProgressCounter ( ){
    if(progressCounter<progress) {
      progressCounter++ ;
    }
    emit(PlusProgressState( ));
  }



}
