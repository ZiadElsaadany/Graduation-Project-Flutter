import 'dart:convert';
import 'dart:ui';

class GiftCategoryModel {
  final String? image;
  final Color? color;
  final String? message;
  final List<String>? categories;
  final int? statusCode;
  final bool? isSuccessful;

  GiftCategoryModel(
      {this.image,
      this.color,
      this.message,
      this.categories,
      this.statusCode,
      this.isSuccessful});

  factory GiftCategoryModel.fromJson(String jsonString) {
    final Map<String, dynamic> json = jsonDecode(jsonString);
    return GiftCategoryModel(
      message: json['message'] as String,
      categories:
          (json['data'] as List<String>).toList(),
      statusCode: json['statusCode'] as int,
      isSuccessful: json['isSuccessful'] as bool,
    );
  }
}
