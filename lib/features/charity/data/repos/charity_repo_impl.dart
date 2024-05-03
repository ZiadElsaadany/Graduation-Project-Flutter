import 'package:aoun_tu/features/charity/data/models/category_model.dart';
import 'package:aoun_tu/features/charity/data/models/donation_case.dart';
import 'package:aoun_tu/features/home/data/models/campain_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utls/api_service.dart';
import '../../../../core/utls/app_apis.dart';
import 'charity_repo.dart';

class CharityRepoImpl implements CharityRepo {
  final ApiService apiService;
  CharityRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<CampaignModel>>> getCampainsInCharity(
      {required int charityId}) async {
    try {
      var response =
          await apiService.get(endpoint: AppApis.campaignsInCharity(charityId));
      List<CampaignModel> campaigns = [];
      for (var campaign in response['data']) {
        campaigns.add(CampaignModel.fromJson(campaign));
      }

      return right(campaigns);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories(
      {required int charityId}) async {
    try {
      var response = await apiService.get(
          endpoint: AppApis.categoriesInCharity(charityId));
      List<CategoryModel> categories = [];
      for (var category in response['data']) {
        categories.add(CategoryModel.fromJson(category));
      }

      return right(categories);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<DonationCaseModel>>> getDonationCasesInCategory(
      {required int categoryId}) async {
    try {
      var response = await apiService.get(
          endpoint: AppApis.donationCasesInCategory(categoryId));
      List<DonationCaseModel> donationCases = [];
      for (var donationCase in response['data']) {
        donationCases.add(DonationCaseModel.fromJson(donationCase));
      }

      return right(donationCases);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
