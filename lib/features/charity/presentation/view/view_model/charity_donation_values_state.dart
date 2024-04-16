part of 'charity_donation_values_cubit.dart';

@immutable
sealed class CharityDonationValuesState {}

class CharityDonationValuesInitial extends CharityDonationValuesState {}
class SelectCharityDonationValueState extends CharityDonationValuesState {}

class AddedTextInTextEditingController extends CharityDonationValuesState {
late final TextEditingController textEditingController;

AddedTextInTextEditingController(this.textEditingController);
}
class CheckBoxSelectedState extends CharityDonationValuesState {}

