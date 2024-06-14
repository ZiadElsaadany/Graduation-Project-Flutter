import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:aoun_tu/features/settings/data/repos/edit_password/edit_password_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'edit_password_state.dart';

class EditPasswordCubit extends Cubit<EditPasswordState> {
  EditPasswordCubit(this.editPasswordRepo) : super(EditPasswordInitial());
  final EditPasswordRepo editPasswordRepo;
  final GlobalKey<FormState> editPasswordFormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController email = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController comfirmNewPassword = TextEditingController();

  Future<void> editPassword() async {
    emit(EditPasswordLoading());
    if (editPasswordFormKey.currentState!.validate()) {
      editPasswordFormKey.currentState!.save();
      var result = await editPasswordRepo.editPassword(
        email: Hive.box(AppHive.userBox).get(AppHive.emailKey),
        newPassword: newPassword.text,
        comfirmNewPassword: comfirmNewPassword.text,
      );
      result.fold((failure) {
        emit(EditPasswordError(failure.msg));
      }, (success) {
        emit(EditPasswordSuccess());
      });
    } else {
      autovalidateMode = AutovalidateMode.always;
      emit(EditPasswordInitial());
    }
  }
}
