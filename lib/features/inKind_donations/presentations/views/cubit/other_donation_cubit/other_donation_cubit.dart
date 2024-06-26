import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'other_donation_state.dart';

class OtherDonationCubit extends Cubit<OtherDonationState> {
  OtherDonationCubit() : super(OtherDonationInitial());
  String inKindDonation = "";
  String donationDetails = "";
}
