import 'package:aoun_tu/features/gift_donation/data/models/gift_values_model.dart';
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



  late TextEditingController giftValueTextEditingController = TextEditingController();

   textStates() {
    if (giftValueTextEditingController.text.isNotEmpty) {
      selected = false;
      emit(AddedTextInTextEditingController(giftValueTextEditingController));
      return giftValueTextEditingController.text;
    } else if (selected == true) {
      emit(SelectGiftValueContainer());
      return giftValuesList[itemIndex].value;
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
  late TextEditingController pinCodeController =
      TextEditingController();
}
