import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/campain_model.dart';
import '../models/charity_model.dart';
import '../models/banner_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CharityModel>>> getCharities();
  Future<Either<Failure, List<CampaignModel>>> getCampaigns();
  Future<Either<Failure, List<BannerModel>>> getBanners();
}
