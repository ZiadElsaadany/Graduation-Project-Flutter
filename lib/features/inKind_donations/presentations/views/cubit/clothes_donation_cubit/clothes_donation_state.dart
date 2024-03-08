part of 'clothes_donation_cubit.dart';

sealed class ClothesDonationState extends Equatable {
  const ClothesDonationState();

  @override
  List<Object> get props => [];
}

final class ClothesDonationInitial extends ClothesDonationState {}

final class ChildrenCountPlus extends ClothesDonationState {}

final class ChildrenCountMinus extends ClothesDonationState {}

final class MenCountPlus extends ClothesDonationState {}

final class MenCountMinus extends ClothesDonationState {}

final class WomenCountPlus extends ClothesDonationState {}

final class WomenCountMinus extends ClothesDonationState {}
