import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setup() {
  serviceLocator.registerLazySingleton(
    () => OnBoardingCubit(),
  );
}
