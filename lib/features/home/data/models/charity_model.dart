// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CharityModel extends Equatable {
  final int? charityId;
  final String? charityName;
  final String? charityDescription;
  final String? imageUrl;
  final String? charityLocation;
  final String? facebookPageUrl;
  final String? instagramPageUrl;
  final String? whatsappNumber;
  final String? phoneNumber;

  const CharityModel(
      {required this.charityId,
      required this.charityName,
      required this.charityDescription,
      required this.imageUrl,
      required this.charityLocation,
      required this.facebookPageUrl,
      required this.instagramPageUrl,
      required this.whatsappNumber,
      required this.phoneNumber});

  factory CharityModel.fromJson(Map<String, dynamic> json) {
    return CharityModel(
        charityId: json['charityId'],
        charityName: json['charityName'],
        charityDescription: json['charityDescription'],
        imageUrl: json['imageUrl'],
        charityLocation: json['charityLocation'],
        facebookPageUrl: json['facebookPageUrl'],
        instagramPageUrl: json['instagramPageUrl'],
        whatsappNumber: json['whatsappNumber'],
        phoneNumber: json['phoneNumber']);
  }

  Map<String, dynamic> toJson() => {
        'charityId': charityId,
        'charityName': charityName,
        'charityDescription': charityDescription,
        'imageUrl': imageUrl,
        'charityLocation': charityLocation,
        'facebookPageUrl': facebookPageUrl,
        'instagramPageUrl': instagramPageUrl,
        'whatsappNumber': whatsappNumber,
        'phoneNumber': phoneNumber
      };

  @override
  List<Object?> get props {
    return [
      charityId,
      charityName,
      charityDescription,
      imageUrl,
      charityLocation,
      facebookPageUrl,
      instagramPageUrl,
      whatsappNumber,
      phoneNumber,
    ];
  }
}
