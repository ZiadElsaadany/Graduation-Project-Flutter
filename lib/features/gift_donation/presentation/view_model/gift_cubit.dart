import 'package:aoun_tu/features/gift_donation/data/models/gift_values_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'gift_state.dart';

class GiftCubit extends Cubit<GiftState> {
  GiftCubit() : super(GiftInitial());

  int get itemIndex => _itemIndex;
  int _itemIndex = 0;
  bool get selected => _selected;
  bool _selected = false;
  selectedItemIndex(int index) {
    _itemIndex = index;
    _selected = true;
    emit(SelectGiftValueContainer());
  }



  late TextEditingController giftValueTextEditingController = TextEditingController();

   textStates() {
    if (giftValueTextEditingController.text.isNotEmpty) {
      _selected = false;
      emit(AddedTextInTextEditingController(giftValueTextEditingController));
      return giftValueTextEditingController.text;
    } else if (_selected == true) {
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
