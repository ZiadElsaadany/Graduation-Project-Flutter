import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utls/api_service.dart';
import '../../../../core/utls/app_apis.dart';
import '../models/campain_model.dart';
import '../models/charity_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<CharityModel>>> getCharities() async {
    try {
      var response = await apiService.get(endpoint: AppApis.charityEndPoint);
      List<CharityModel> charities = [];
      for (var charity in response['data']) {
        charities.add(CharityModel.fromJson(charity));
      }

      return right(charities);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<CampaignModel>>> getCampaigns() async {
    try {
      var response =
          await apiService.get(endpoint: AppApis.homeCampainsEndPoint);
      List<CampaignModel> campaigns = [];
      for (var campaign in response['data']) {
        campaigns.add(CampaignModel.fromJson(campaign));
      }

      return right(campaigns);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
