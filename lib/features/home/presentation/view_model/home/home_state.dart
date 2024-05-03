part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class CharitiesLoadingState extends HomeState {}

final class CharitiesSuccessState extends HomeState {
  final List<CharityModel> charities;
  const CharitiesSuccessState({required this.charities});
}

final class CharitiesFailureState extends HomeState {
  final String message;
  const CharitiesFailureState({required this.message});
}

final class CampaignsLoadingState extends HomeState {}

final class CampaignsSuccessState extends HomeState {
  final List<CampaignModel> campaigns;
  const CampaignsSuccessState({required this.campaigns});
}

final class CampaignsFailureState extends HomeState {
  final String message;
  const CampaignsFailureState({required this.message});
}
