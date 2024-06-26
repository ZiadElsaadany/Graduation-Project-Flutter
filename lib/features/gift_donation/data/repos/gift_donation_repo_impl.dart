import 'package:aoun_tu/core/errors/failure.dart';
import 'package:aoun_tu/core/utls/app_apis.dart';
import 'package:aoun_tu/features/gift_donation/data/models/gift_category_model.dart';
import 'package:aoun_tu/features/gift_donation/data/models/gift_donation_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/utls/api_service.dart';
import 'gift_donation_repo.dart';

class GiftDonationRepoImpl implements GiftDonationRepo {
  final ApiService apiService;
  final DonationRequestBodyModel donationRequestBodyModel =
      DonationRequestBodyModel(
        amount: 100,
        giftDonationType: 'توفيرمياه',
        message: "",
        receiverName: 'nouur',
        receiverPhone: '01064454429',
        senderPhone: '01064454429'
      );

  GiftDonationRepoImpl(this.apiService);

  @override
  Future<Either<Failure,GiftCategoryModel>> getGiftCategoriesData() async {
    try {
      var response =
          await apiService.get(endpoint: AppApis.giftCategoryEndPoint);
      return right(
          GiftCategoryModel.fromJson(response as Map<String, dynamic>));
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, GiftDonationApiResponseModel>> postGiftDonationData() async {
    try {
      var response = await apiService.post(
          endpoint: "${AppApis.giftDonationEndPoint}?userId=4",
          data: donationRequestBodyModel.toJson());
      return right(GiftDonationApiResponseModel.fromJson(response));
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
