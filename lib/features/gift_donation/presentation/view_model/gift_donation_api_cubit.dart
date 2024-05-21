import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aoun_tu/features/gift_donation/data/models/gift_donation_model.dart';
import '../../data/repos/gift_donation_repo.dart';
part 'gift_donation_api_state.dart';

class GiftDonationApiCubit extends Cubit<GiftDonationApiState> {
  final GiftDonationRepo giftDonationRepo;

  GiftDonationApiCubit(this.giftDonationRepo) : super(GiftDonationApiInitial());

  Future postDonationData(
      String endpoint, int userId, Map<String, dynamic> data) async {
    emit(GiftDonationApiLoading());
    var result =
        await giftDonationRepo.postGiftDonationData(endpoint, userId, data);
    result.fold((l) => emit(GiftDonationApiFailure(l.msg)),
        (r) => emit(GiftDonationApiSuccess(r)));
  }
}
