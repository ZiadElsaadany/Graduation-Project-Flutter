import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'clothes_donation_state.dart';

class ClothesDonationCubit extends Cubit<ClothesDonationState> {
  ClothesDonationCubit() : super(ClothesDonationInitial());

  int childrenCount = 0;
  int menCount = 0;
  int womenCount = 0;

  int getAllCount() {
    return childrenCount + menCount + womenCount;
  }

  childrenCountPlus() {
    childrenCount = childrenCount + 1;
    emit(ChildrenCountPlus());
    emit(ClothesDonationInitial());
  }

  childrenCountMinus() {
    if (childrenCount > 0) {
      childrenCount--;
      emit(ChildrenCountMinus());
      emit(ClothesDonationInitial());
    }
  }

  menCountPlus() {
    menCount = menCount + 1;
    emit(MenCountPlus());
    emit(ClothesDonationInitial());
  }

  menCountMinus() {
    if (menCount > 0) {
      menCount--;
      emit(MenCountMinus());
      emit(ClothesDonationInitial());
    }
  }

  womenCountPlus() {
    womenCount = womenCount + 1;
    emit(WomenCountPlus());
    emit(ClothesDonationInitial());
  }

  womenCountMinus() {
    if (womenCount > 0) {
      womenCount--;
      emit(WomenCountMinus());
      emit(ClothesDonationInitial());
    }
  }
}
