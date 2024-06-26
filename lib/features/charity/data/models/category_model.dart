import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final int? categoryId;
  final String? categoryTitle;

  const CategoryModel({this.categoryId, this.categoryTitle});
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      categoryId: json['categoryId'],
      categoryTitle: json['categoryTitle'],
    );
  }

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "categoryTitle": categoryTitle,
      };

  @override
  List<Object?> get props => [
        categoryId,
        categoryTitle,
      ];
}
