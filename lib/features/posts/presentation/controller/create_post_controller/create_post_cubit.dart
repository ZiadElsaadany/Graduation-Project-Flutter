import 'dart:io';

import 'package:aoun_tu/features/posts/data/repos/post_repo.dart';
import 'package:aoun_tu/features/posts/presentation/controller/create_post_controller/create_post_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utls/loggers.dart';

class CreatePostCubit extends Cubit<CreatePostStates>{
  CreatePostCubit(

  {
    required this.postsRepo
}
      ):super(CreatePostInitialState());

  final  PostsRepo postsRepo ;




  createPost( {
    required String postContent,
    required  List<File> images
})async {
    emit(CreatePostLoadingState());

    var result = await postsRepo.createPost(
      text:  postContent,
      images: images
    );
    result.fold((l) {
      AppLogger.print(l.msg.toString());
      AppLogger.print(l.statusCode.toString());
      emit(CreatePostFailureState(errorMessage: l.msg));
    }, (r) {


      emit(CreatePostSuccessState(postModel: r));
    });
  }



}