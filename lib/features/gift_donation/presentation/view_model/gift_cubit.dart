import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'gift_state.dart';

class GiftCubit extends Cubit<GiftState> {
  GiftCubit() : super(GiftInitial());

  late int itemIndex=0;
  late bool selected=false;
  selectedItemIndex(int index){
    itemIndex=index;
    selected=true;
    emit(SelectGiftValueContainer());
  }

  List<String> values=[' 50 ','100','150','200'];
}
