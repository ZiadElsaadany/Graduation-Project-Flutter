import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  final PageController pageController = PageController();

  int currentPage = 0 ;
  getCurrentPageViewIndex(c){
    currentPage=c;
    emit(ChangePageCounterState());
  }
}
