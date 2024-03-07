import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'gift_state.dart';

class GiftCubit extends Cubit<GiftState> {
  GiftCubit() : super(GiftInitial());

  late int itemIndex = 0;
  late bool selected = false;

  selectedItemIndex(int index) {
    itemIndex = index;
    selected = true;
    emit(SelectGiftValueContainer());
  }

  List<String> values = [' 50 ', '100', '150', '200'];

  late TextEditingController textEditingController = TextEditingController();

  String textStates() {
    if (textEditingController.text.isNotEmpty) {
      selected = false;
      emit(AddedTextInTextEditingController(textEditingController));
      return textEditingController.text;
    } else if (selected == true) {
      emit(SelectGiftValueContainer());
      return values[itemIndex];
    } else {
      return '0.0';
    }
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
}
