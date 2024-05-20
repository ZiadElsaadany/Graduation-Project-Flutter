part of 'gift_cubit.dart';

@immutable
abstract class GiftState {}

class GiftInitial extends GiftState {}

class SelectGiftValueContainer extends GiftState {
  final int selectedIndex;

  SelectGiftValueContainer(this.selectedIndex,);
}


class AddedTextInTextEditingController extends GiftState {
  late final TextEditingController textEditingController;

  AddedTextInTextEditingController(this.textEditingController);
}

class CheckBoxSelectedState extends GiftState {}
