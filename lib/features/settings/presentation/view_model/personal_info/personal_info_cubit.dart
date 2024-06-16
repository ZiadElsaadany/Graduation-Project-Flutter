import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'personal_info_state.dart';

class PersonalInfoCubit extends Cubit<PersonalInfoState> {
  PersonalInfoCubit() : super(PersonalInfoInitial());
  final GlobalKey<FormState> personalInfoFormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
}
