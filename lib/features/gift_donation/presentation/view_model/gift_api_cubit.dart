import 'package:aoun_tu/features/gift_donation/data/repos/gift_donation_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'gift_api_states.dart';

class GiftApiCubit extends Cubit<GiftApiStates> {
  final GiftDonationRepo giftDonationRepo;

  GiftApiCubit(this.giftDonationRepo) : super(InitialGiftApiState());

  Future giftCategory() async {
    emit(LoadingGiftApiState());
    var result = await giftDonationRepo.getGiftCategoriesData();
    result.fold((l) => emit(FailureGiftApiState(l.msg)), (r) {
      emit(SuccessGiftApiState(r));
    });
  }
}
