part of 'charity_donation_values_cubit.dart';

@immutable
sealed class CharityDonationValuesState {}

class CharityDonationValuesInitial extends CharityDonationValuesState {}
class SelectDonationValueContainer extends CharityDonationValuesState {
  final int index;

  SelectDonationValueContainer(this.index);
}
class AnotherAmountEnteredState extends CharityDonationValuesState {
  final String amount;

  AnotherAmountEnteredState(this.amount);
}


class CheckBoxSelectedState extends CharityDonationValuesState {}

