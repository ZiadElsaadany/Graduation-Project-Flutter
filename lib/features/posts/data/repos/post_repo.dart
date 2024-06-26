import 'dart:io';

import 'package:aoun_tu/core/errors/failure.dart';
import 'package:aoun_tu/features/posts/data/models/post_model.dart';
import 'package:dartz/dartz.dart';

abstract class PostsRepo {
  Future<Either<Failure, List<PostModel>>> getPosts({int page = 0});
  Future<Either<Failure, void>> like({required int postId});

  Future<Either<Failure, List<PostModel>>> getBookMarks();
  Future<Either<Failure, void>> bookMarkPost({required int postId});
  Future<Either<Failure, PostModel>> createPost(
  {
    required String text ,
    required  List<File>  images
}
      ) ;
}
