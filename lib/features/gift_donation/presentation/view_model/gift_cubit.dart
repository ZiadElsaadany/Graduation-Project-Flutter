import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
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
