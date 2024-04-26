import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:aoun_tu/features/posts/data/repos/posts_repo_implementation.dart';
import 'package:get_it/get_it.dart';

import 'core/utls/api_service.dart';
import 'features/auth/data/repos/auth_repo_implementation.dart';

final serviceLocator = GetIt.instance;

void setup() {
  serviceLocator.registerLazySingleton(
    () => OnBoardingCubit(),
  );
  serviceLocator.registerSingleton<ApiService>(
      ApiService()
  ) ;
  serviceLocator.registerSingleton<AuthRepoImplementation>(
    AuthRepoImplementation(
        apiService:      serviceLocator<ApiService>()
    ),
  ); serviceLocator.registerSingleton<PostsRepoImplementation>(
    PostsRepoImplementation(
        apiService:      serviceLocator<ApiService>()
    ),
  );
}
