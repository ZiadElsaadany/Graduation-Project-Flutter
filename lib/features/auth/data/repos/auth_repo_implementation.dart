import 'package:aoun_tu/core/errors/failure.dart';
import 'package:aoun_tu/core/utls/api_service.dart';
import 'package:aoun_tu/core/utls/app_apis.dart';
import 'package:aoun_tu/features/auth/data/models/login_model.dart';
import 'package:aoun_tu/features/auth/data/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../../../core/utls/my_hive.dart';

class AuthRepoImplementation implements AuthRepo {
  final ApiService apiService;
  AuthRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, LoginModel>> login(
      {required String email, required String password}) async {
    try {
      var response = await apiService.postFormData(
          endpoint: AppApis.loginEndPoint,
          data: {"email": email, "password": password});
      final user = LoginModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user.token);
      await Hive.openBox(AppHive.userBox);
      Hive.box(AppHive.userBox)
          .put(AppHive.emailKey, decodedToken["userEmail"]);
      Hive.box(AppHive.userBox)
          .put(AppHive.phoneKey, decodedToken["userPhone"]);
      Hive.box(AppHive.userBox)
          .put(AppHive.genderKey, decodedToken["userGender"]);
      Hive.box(AppHive.userBox)
          .put(AppHive.imageKey, decodedToken["userImageUrl"]);
      Hive.box(AppHive.userBox).put(AppHive.idKey, decodedToken["userId"]);
      Hive.box(AppHive.userBox).put(AppHive.nameKey, decodedToken["sub"]);

      return right(LoginModel.fromJson(response));
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
