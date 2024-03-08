part of 'medicines_donation_cubit.dart';

sealed class MedicinesDonationState extends Equatable {
  const MedicinesDonationState();

  @override
  List<Object> get props => [];
}

final class MedicinesDonationInitial extends MedicinesDonationState {}

final class CountPlus extends MedicinesDonationState {}

final class CountMinus extends MedicinesDonationState {}
