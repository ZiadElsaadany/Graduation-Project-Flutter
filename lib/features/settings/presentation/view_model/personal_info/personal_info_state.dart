part of 'personal_info_cubit.dart';

sealed class PersonalInfoState extends Equatable {
  const PersonalInfoState();

  @override
  List<Object> get props => [];
}

final class PersonalInfoInitial extends PersonalInfoState {}
