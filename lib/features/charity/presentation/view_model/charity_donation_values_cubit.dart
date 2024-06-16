import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/charity_donation_values.dart';
part 'charity_donation_values_state.dart';

class CharityDonationValuesCubit extends Cubit<CharityDonationValuesState> {
  CharityDonationValuesCubit() : super(CharityDonationValuesInitial());

  List<CharityDonationValues> charityDonationValuesList = [
    CharityDonationValues('50'),
    CharityDonationValues('100'),
    CharityDonationValues('150'),
    CharityDonationValues('200'),
  ];



  int selectedIndex = -1;
  bool isSelected = false;
  String enteredAmount = '';
  //logic for containers in list view --> color selected one
  selectedItemIndex(int index) {
    selectedIndex = index;
    isSelected = true;
    emit(SelectDonationValueContainer(selectedIndex));
  }

  //enter another amount text field amount value
  void enterAmount(String value) {
    enteredAmount = value;
    emit(AnotherAmountEnteredState(enteredAmount));
  }

  late TextEditingController charityDonationValueTextEditingController =
      TextEditingController();


  late bool checkBoxSelected = false;

  isCheckBoxSelected(bool checkBoxSelected) {
    this.checkBoxSelected = checkBoxSelected;
    emit(CheckBoxSelectedState());
  }
}
