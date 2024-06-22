import 'package:aoun_tu/features/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/banner_model.dart';
import '../../../data/models/campain_model.dart';
import '../../../data/models/charity_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  final HomeRepo homeRepo;

  Future<void> getCharities() async {
    emit(CharitiesLoadingState());
    var result = await homeRepo.getCharities();
    result.fold((failure) {
      emit(CharitiesFailureState(message: failure.msg));
    }, (charities) {
      emit(CharitiesSuccessState(charities: charities));
    });
  }

  Future<void> getCampaigns() async {
    emit(CampaignsLoadingState());
    var result = await homeRepo.getCampaigns();
    result.fold((failure) {
      emit(CampaignsFailureState(message: failure.msg));
    }, (campaigns) {
      emit(CampaignsSuccessState(campaigns: campaigns));
    });
  }

  Future<void> getBanners() async {
    emit(BannersLoadingState());
    var result = await homeRepo.getBanners();
    result.fold((failure) {
      emit(BannersFailureState(message: failure.msg));
    }, (banners) {
      emit(BannersSuccessState(banners: banners));
    });
  }
}
