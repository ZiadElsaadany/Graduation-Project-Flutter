
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/register/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitial());

  int progress = 6;

  int progressCounter = 1;
  void plusProgressCounter() {
    if (progressCounter < progress) {
      progressCounter++;
    } else {
      progressCounter--;
    }
    emit(PlusProgressStateRegister());
  }

  bool secure = true;
  changeSecureLogin() {
    secure = !secure;
    emit(ChangeSecureLoginStateRegister());
  }

  bool confirmSecure = true;
  changeConfirmSecure( ) {
    confirmSecure= !confirmSecure;
    emit(ChangeConfirmSecureState( ));
  }

  List<RegisterOptionsModel> registerOptions = [

    RegisterOptionsModel(title: AppText.enterYourEmailForRegister,
    description: AppText.enterYourEmailForRegisterDescription),
    RegisterOptionsModel(title: AppText.createPassword,
    description: AppText.createPasswordDescription),
    RegisterOptionsModel(title: AppText.tellYourName,
    description: AppText.tellYourNameDescription),
    RegisterOptionsModel(title: AppText.tellYourPhone,
    description: AppText.tellYourPhoneDescription),
    RegisterOptionsModel(title: AppText.tellYourGender,
    description: AppText.tellYourGenderDescription),
    RegisterOptionsModel(title: AppText.addProfilePhoto,
    description: AppText.addProfileDescription),



  ];

  RegExp  emailRegex =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  RegExp passwordRegex =
      RegExp(   r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$' );
}

class RegisterOptionsModel {
  final String title;
  final String description;


  RegisterOptionsModel( {
    required this.title,
    required this.description});
}
