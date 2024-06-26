import 'package:aoun_tu/features/gift_donation/data/models/gift_category_model.dart';
import 'package:aoun_tu/features/gift_donation/data/models/gift_donation_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

abstract class GiftDonationRepo{
  Future<Either<Failure,GiftCategoryModel>> getGiftCategoriesData();
  Future<Either<Failure,GiftDonationApiResponseModel>> postGiftDonationData();
}