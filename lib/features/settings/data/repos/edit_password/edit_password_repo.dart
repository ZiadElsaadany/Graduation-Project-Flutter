import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';

abstract class EditPasswordRepo {
  Future<Either<Failure, dynamic>> editPassword(
      {required String email,
      required String newPassword,
      required String comfirmNewPassword});
}
