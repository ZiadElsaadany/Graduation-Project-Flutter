import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/utls/api_service.dart';
import '../../../../../core/utls/app_apis.dart';
import 'edit_password_repo.dart';

class EditPasswordRepoImpl implements EditPasswordRepo {
  final ApiService apiService;

  EditPasswordRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, dynamic>> editPassword(
      {required String email,
      required String newPassword,
      required String comfirmNewPassword}) async {
    try {
      var response = await apiService
          .post(endpoint: AppApis.editPasswordEndPoint, formData: {
        "email": email,
        "newPassword": newPassword,
        "confirmationPassword": comfirmNewPassword
      });
      return right(response);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
