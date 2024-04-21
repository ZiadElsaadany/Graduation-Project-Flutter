import 'package:aoun_tu/core/errors/failure.dart';
import 'package:aoun_tu/core/utls/api_service.dart';
import 'package:aoun_tu/core/utls/app_apis.dart';
import 'package:aoun_tu/features/auth/data/models/login_model.dart';
import 'package:aoun_tu/features/auth/data/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepoImplementation implements AuthRepo {
  final ApiService apiService ;
  AuthRepoImplementation (
  {
    required this.apiService
}
      ) ;
  @override
  Future<Either<Failure, LoginModel>> login({required String email, required String password})

  async{

  try {
    var response =await  apiService.postFormData(endpoint: AppApis.loginEndPoint, data: {
      "email": email,
      "password": password
    });
    return right(LoginModel.fromJson(response));
  }on DioException catch(e) {
return left(ServerFailure.fromDioException(e));
  }




  }

}