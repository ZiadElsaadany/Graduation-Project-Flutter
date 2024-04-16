import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../data/charity_donation_values.dart';

part 'charity_donation_values_state.dart';

class CharityDonationValuesCubit extends Cubit<CharityDonationValuesState> {
  CharityDonationValuesCubit() : super(CharityDonationValuesInitial());

  late int itemIndex = 0;
  late bool selected = false;

  selectedItemIndex(int index) {
    itemIndex = index;
    selected = true;
    emit(SelectCharityDonationValuesContainer());
  }



  late TextEditingController charityDonationValueTextEditingController = TextEditingController();

  textStates() {
    if (charityDonationValueTextEditingController.text.isNotEmpty) {
      selected = false;
      emit(AddedTextInTextEditingController(charityDonationValueTextEditingController));
      return charityDonationValueTextEditingController.text;
    } else if (selected == true) {
      emit(SelectCharityDonationValuesContainer());
      return charityDonationValuesList[itemIndex].value;
    } else {
      return '0.0';
    }
  }

  late bool checkBoxSelected = false;

  isCheckBoxSelected(bool checkBoxSelected) {
    this.checkBoxSelected = checkBoxSelected;
    emit(CheckBoxSelectedState());
  }
}
