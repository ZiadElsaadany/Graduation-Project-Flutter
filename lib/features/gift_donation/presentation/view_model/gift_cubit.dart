import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/gift_values_model.dart';

part 'gift_state.dart';

class GiftCubit extends Cubit<GiftState> {
  GiftCubit() : super(GiftInitial());

  //this code used in donate as gift screen
  List<GiftValuesModel> giftValuesList = [
    GiftValuesModel('50'),
    GiftValuesModel('100'),
    GiftValuesModel('150'),
    GiftValuesModel('200'),
  ];
  int selectedIndex = -1;
  bool isSelected = false;
  String enteredAmount = '';

  selectedItemIndex(int index) {
    selectedIndex = index;
    isSelected = true;
    emit(SelectGiftValueContainer(selectedIndex));
  }

  void enterAmount(String value) {
    enteredAmount = value;
    emit(GiftAmountEnteredState(enteredAmount));
  }

  late bool checkBoxSelected = false;

  isCheckBoxSelected(bool checkBoxSelected) {
    this.checkBoxSelected = checkBoxSelected;
    emit(CheckBoxSelectedState());
  }

  late TextEditingController recipientNameTextController =
      TextEditingController();
  late TextEditingController recipientPhoneTextController =
      TextEditingController();
  late TextEditingController senderNameTextController = TextEditingController();
  late TextEditingController senderPhoneTextController =
      TextEditingController();
  late TextEditingController pinCodeController = TextEditingController();
}
