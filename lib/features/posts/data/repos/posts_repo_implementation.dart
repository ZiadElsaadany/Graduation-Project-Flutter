import 'package:aoun_tu/core/errors/failure.dart';
import 'package:aoun_tu/features/posts/data/models/post_model.dart';
import 'package:aoun_tu/features/posts/data/repos/post_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utls/api_service.dart';
import '../../../../core/utls/app_apis.dart';
import '../../../../core/utls/loggers.dart';

class PostsRepoImplementation implements PostsRepo {
  final ApiService apiService;
  PostsRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<PostModel>>> getPosts({int page = 0}) async {
    try {
      var response = await apiService.get(
          endpoint: "${AppApis.getPostsEndPoint}?page=$page");
      AppLogger.print("response: $response");
      return right(List<PostModel>.from(
          (response["data"] as List).map((e) => PostModel.fromJson(e))));
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      AppLogger.print(e.response?.statusCode.toString());
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, void>> like({required int postId}) async {
    try {
      var response = await apiService.post(
          endpoint: "${AppApis.likeEndPoint}?postId=$postId");
      AppLogger.print("Like Response: $response");
      return right(null);
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<PostModel>>> getBookMarks() async {
    try {
      var response =
          await apiService.get(endpoint: AppApis.getBookMarkEndPoint);
      AppLogger.print("response: $response");
      return right(List<PostModel>.from(
          (response["data"] as List).map((e) => PostModel.fromJson(e))));
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      AppLogger.print(e.response?.statusCode.toString());
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, void>> bookMarkPost({required int postId}) async {
    try {
      var response =
          await apiService.post(endpoint: AppApis.bookMarkEndPoint(postId));
      AppLogger.print("Book Mark Response: $response");
      return right(null);
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      return left(ServerFailure.fromDioException(e));
    }
  }
}
