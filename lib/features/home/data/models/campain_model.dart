//  "campaignId": 1,
//       "campaignName": "campaignName",
//       "campaignAdditionalName": "campaignAdditionalName",
//       "campaignDescription": "campaignDescription",
//       "campaignImageUrl": "https://khaier-production.up.railway.app/api/v1/campaign/image/images (1).png-f12b8920-4d54-40cd-8483-55a5ca5facf1",
//       "campaignEndDay": "متبقي : 18 ايام ",
//       "numberOfBeneficiaries": 123,
//       "amountRequired": 1234.33,
//       "charityId": 1,
//       "charityName": "First Charity Name",
//       "charityImgUrl": "https://khaier-production.up.railway.app/api/v1/charity/image/ethan-hoover-eIVJAkj1uCs-unsplash.jpg-c7934923-a34d-47ae-a5d8-b758003c14d9"

import 'package:equatable/equatable.dart';

class CampaignModel extends Equatable {
  final int? campaignId;
  final String? campaignName;
  final String? campaignAdditionalName;
  final String? campaignDescription;
  final String? campaignImageUrl;
  final String? campaignEndDay;
  final int? numberOfBeneficiaries;
  final double? amountRequired;
  final int? charityId;
  final String? charityName;
  final String? charityImgUrl;

  const CampaignModel(
      {required this.campaignId,
      required this.campaignName,
      required this.campaignAdditionalName,
      required this.campaignDescription,
      required this.campaignImageUrl,
      required this.campaignEndDay,
      required this.numberOfBeneficiaries,
      required this.amountRequired,
      required this.charityId,
      required this.charityName,
      required this.charityImgUrl});

  factory CampaignModel.fromJson(Map<String, dynamic> json) {
    return CampaignModel(
        campaignId: json['campaignId'],
        campaignName: json['campaignName'],
        campaignAdditionalName: json['campaignAdditionalName'],
        campaignDescription: json['campaignDescription'],
        campaignImageUrl: json['campaignImageUrl'],
        campaignEndDay: json['campaignEndDay'],
        numberOfBeneficiaries: json['numberOfBeneficiaries'],
        amountRequired: json['amountRequired'],
        charityId: json['charityId'],
        charityName: json['charityName'],
        charityImgUrl: json['charityImgUrl']);
  }

  Map<String, dynamic> toJson() => {
        'campaignId': campaignId,
        'campaignName': campaignName,
        'campaignAdditionalName': campaignAdditionalName,
        'campaignDescription': campaignDescription,
        'campaignImageUrl': campaignImageUrl,
        'campaignEndDay': campaignEndDay,
        'numberOfBeneficiaries': numberOfBeneficiaries,
        'amountRequired': amountRequired,
        'charityId': charityId,
        'charityName': charityName,
        'charityImgUrl': charityImgUrl
      };

  @override
  List<Object?> get props => [
        campaignId,
        campaignName,
        campaignAdditionalName,
        campaignDescription,
        campaignImageUrl,
        campaignEndDay,
        numberOfBeneficiaries,
        amountRequired,
        charityId,
        charityName,
        charityImgUrl
      ];
}
