import 'package:equatable/equatable.dart';

class DonationCaseModel extends Equatable {
  final int? caseId;
  final String? caseName;
  final String? hekma;
  final String? description;
  final int? requiredAmount;
  final int? paidAmount;
  final int? remainingAmount;
  final int? categoryId;

  const DonationCaseModel(
      {required this.caseId,
      required this.caseName,
      required this.hekma,
      required this.description,
      required this.requiredAmount,
      required this.paidAmount,
      required this.remainingAmount,
      required this.categoryId});

  factory DonationCaseModel.fromJson(Map<String, dynamic> json) {
    return DonationCaseModel(
        caseId: json['caseId'],
        caseName: json['caseName'],
        hekma: json['hekma'],
        description: json['description'],
        requiredAmount: json['requiredAmount'],
        paidAmount: json['paidAmount'],
        remainingAmount: json['remainingAmount'],
        categoryId: json['categoryId']);
  }

  Map<String, dynamic> toJson() => {
        "caseId": caseId,
        "caseName": caseName,
        "hekma": hekma,
        "description": description,
        "requiredAmount": requiredAmount,
        "paidAmount": paidAmount,
        "remainingAmount": remainingAmount,
        "categoryId": categoryId
      };

  @override
  List<Object?> get props {
    return [
      caseId,
      caseName,
      hekma,
      description,
      requiredAmount,
      paidAmount,
      remainingAmount,
      categoryId,
    ];
  }
}
