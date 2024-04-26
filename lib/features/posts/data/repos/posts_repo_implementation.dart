import 'package:aoun_tu/core/errors/failure.dart';
import 'package:aoun_tu/features/posts/data/models/post_model.dart';
import 'package:aoun_tu/features/posts/data/repos/post_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utls/api_service.dart';
import '../../../../core/utls/app_apis.dart';
import '../../../../core/utls/loggers.dart';

class PostsRepoImplementation implements PostsRepo{
  final ApiService apiService ;
  PostsRepoImplementation(
  {
    required this.apiService
}
      );
  @override
  Future<Either<Failure, List<PostModel>>> getPosts({
    int page = 0
}) async{

    try {
      var response =await  apiService.get(endpoint: "${AppApis.getPostsEndPoint}?page=$page");
      AppLogger.print(response.toString());
      return right(List<PostModel>.from((response["data"] as List).map((e) => PostModel.fromJson(e))));
    }on DioException catch(e) {
      return left(ServerFailure.fromDioException(e));
    }




  }

  @override
  Future<Either<Failure, void>> like({required int postId}) async{

    try {
      var response =await  apiService.post(
          endpoint: "${AppApis.getPostsEndPoint}?postId=$postId");
      AppLogger.print(response.toString());
      return right(null);
    }on DioException catch(e) {
      return left(ServerFailure.fromDioException(e));
    }




  }

}