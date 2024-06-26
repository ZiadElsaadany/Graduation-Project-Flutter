part of 'gift_donation_api_cubit.dart';

class GiftDonationApiState {}

class GiftDonationApiInitial extends GiftDonationApiState {}
class GiftDonationApiLoading extends GiftDonationApiState {}
class GiftDonationApiSuccess extends GiftDonationApiState {
  final GiftDonationApiResponseModel giftDonationApiResponseModel;

  GiftDonationApiSuccess(this.giftDonationApiResponseModel);
}
class GiftDonationApiFailure extends GiftDonationApiState {
  final String message;
  GiftDonationApiFailure(this.message);
}
