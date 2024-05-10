import 'package:aoun_tu/features/gift_donation/data/repos/gift_donation_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'gift_api_states.dart';

class GiftApiCubit extends Cubit<GiftApiStates> {
  final GiftDonationRepo giftDonationRepo;

  GiftApiCubit(this.giftDonationRepo) : super(InitialGiftApiState());

  Future<void> giftCategory() async {
    emit(LoadingGiftApiState());
    var result = await giftDonationRepo.getGiftCategoriesData();
    result.fold((failure) => emit(FailureGiftApiState(failure.msg)), (success) {
      emit(SuccessGiftApiState(success));
    });
  }
}
