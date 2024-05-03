import 'package:aoun_tu/features/charity/data/repos/charity_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/campain_model.dart';
import '../../../data/models/category_model.dart';
import '../../../data/models/donation_case.dart';

part 'charity_state.dart';

class CharityCubit extends Cubit<CharityState> {
  CharityCubit(this.charityRepo) : super(CharityInitial());
  final CharityRepo charityRepo;

  Future<void> getCampainsInCharity({required int charityId}) async {
    emit(CampaignsLoadingState());
    var result = await charityRepo.getCampainsInCharity(charityId: charityId);
    result.fold((failure) {
      emit(CampaignsFailureState(message: failure.msg));
    }, (campaigns) {
      emit(CampaignsSuccessState(campaigns: campaigns));
    });
  }

  Future<void> getCategories({required int charityId}) async {
    emit(CategoriesLoadingState());
    var result = await charityRepo.getCategories(charityId: charityId);
    result.fold((failure) {
      emit(CategoriesFailureState(message: failure.msg));
    }, (categories) {
      emit(CategoriesSuccessState(categories: categories));
    });
  }

  Future<void> getDonationCases({required int categoryId}) async {
    emit(DonationCasesLoadingState());
    var result =
        await charityRepo.getDonationCasesInCategory(categoryId: categoryId);
    result.fold((failure) {
      emit(DonationCasesFailureState(message: failure.msg));
    }, (donationCases) {
      emit(DonationCasesSuccessState(donationCases: donationCases));
    });
  }
}
