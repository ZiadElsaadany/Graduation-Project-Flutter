import 'package:aoun_tu/features/charity/data/models/category_model.dart';
import 'package:aoun_tu/features/charity/data/models/donation_case.dart';
import 'package:aoun_tu/features/home/data/models/campain_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class CharityRepo {
  Future<Either<Failure, List<CategoryModel>>> getCategories(
      {required int charityId});
  Future<Either<Failure, List<CampaignModel>>> getCampainsInCharity(
      {required int charityId});

  Future<Either<Failure, List<DonationCaseModel>>> getDonationCasesInCategory(
      {required int categoryId});
}
