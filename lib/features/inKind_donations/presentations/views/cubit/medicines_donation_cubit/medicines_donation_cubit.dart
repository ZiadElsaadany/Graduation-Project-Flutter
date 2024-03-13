import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'medicines_donation_state.dart';

class MedicinesDonationCubit extends Cubit<MedicinesDonationState> {
  MedicinesDonationCubit() : super(MedicinesDonationInitial());
  int count = 0;
  countPlus() {
    count++;
    emit(CountPlus());
    emit(MedicinesDonationInitial());
  }

  countMinus() {
    if (count > 0) {
      count--;

      emit(CountMinus());
      emit(MedicinesDonationInitial());
    }
  }
}
