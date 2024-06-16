class GiftDonationApiResponseModel {

  final String message;
  final int statusCode;
  final bool isSuccessful;

  GiftDonationApiResponseModel({required this.message, required this.statusCode, required this.isSuccessful});

  factory GiftDonationApiResponseModel.fromJson(Map<String, dynamic> json) {
    return GiftDonationApiResponseModel(
      message: json['message'] as String,
      statusCode: json['statusCode'] as int,
      isSuccessful: json['isSuccessful'] as bool,
    );
  }
}
class DonationRequestBodyModel {
  final String? senderPhone;
  final String? giftDonationType;
  final int? amount;
  final String? receiverName;
  final String? receiverPhone;
  final String? message;

  DonationRequestBodyModel({
     this.senderPhone,
     this.giftDonationType,
     this.amount,
     this.receiverName,
     this.receiverPhone,
     this.message,
  });

  Map<String, dynamic> toJson() {
    return {
      'senderPhone': senderPhone,
      'giftDonationType': giftDonationType,
      'amount': amount,
      'receiverName': receiverName,
      'receiverPhone': receiverPhone,
      'message': message,
    };
  }
}