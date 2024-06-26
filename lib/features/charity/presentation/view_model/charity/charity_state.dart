part of 'charity_cubit.dart';

sealed class CharityState extends Equatable {
  const CharityState();

  @override
  List<Object> get props => [];
}

final class CharityInitial extends CharityState {}

final class CategoriesLoadingState extends CharityState {}

final class CategoriesSuccessState extends CharityState {
  final List<CategoryModel> categories;
  const CategoriesSuccessState({required this.categories});
}

final class CategoriesFailureState extends CharityState {
  final String message;
  const CategoriesFailureState({required this.message});
}

final class CampaignsLoadingState extends CharityState {}

final class CampaignsSuccessState extends CharityState {
  final List<CampaignModel> campaigns;
  const CampaignsSuccessState({required this.campaigns});
}

final class CampaignsFailureState extends CharityState {
  final String message;
  const CampaignsFailureState({required this.message});
}

final class DonationCasesLoadingState extends CharityState {}

final class DonationCasesSuccessState extends CharityState {
  final List<DonationCaseModel> donationCases;
  const DonationCasesSuccessState({required this.donationCases});
}

final class DonationCasesFailureState extends CharityState {
  final String message;
  const DonationCasesFailureState({required this.message});
}
