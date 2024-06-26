part of 'food_donation_cubit.dart';

sealed class FoodDonationState extends Equatable {
  const FoodDonationState();

  @override
  List<Object> get props => [];
}

final class FoodDonationInitial extends FoodDonationState {}

final class CountPlus extends FoodDonationState {}

final class CountMinus extends FoodDonationState {}
