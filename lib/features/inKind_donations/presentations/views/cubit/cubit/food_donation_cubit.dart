import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'food_donation_state.dart';

class FoodDonationCubit extends Cubit<FoodDonationState> {
  FoodDonationCubit() : super(FoodDonationInitial());

  int count = 0;

  countPlus() {
    count = count + 1;
    emit(CountPlus());
    print(count);
    emit(FoodDonationInitial());
  }

  countMinus() {
    if (count > 0) {
      count--;
      print(count);
      emit(CountMinus());
      emit(FoodDonationInitial());
    }
  }
}
