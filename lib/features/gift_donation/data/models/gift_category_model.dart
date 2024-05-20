class GiftCategoryModel {
  final String? message;
  final List<String> categories;
  final int? statusCode;
  final bool? isSuccessful;

  GiftCategoryModel({
    this.message,
    required this.categories,
    this.statusCode,
    this.isSuccessful,
  });

  factory GiftCategoryModel.fromJson(Map<String, dynamic> json) {
    return GiftCategoryModel(
      message: json['message'] as String,
      categories: List<String>.from(json["data"]),
      statusCode: json['statusCode'] as int,
      isSuccessful: json['isSuccessful'] as bool,
    );
  }
}
