class BannerModel {
  final int id;

  final String image;
  final String title;
  final String description;

  BannerModel({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['Id'],
      image: json['imageUrl'],
      title: json['title'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'imageUrl': image,
      'title': title,
      'description': description,
    };
  }
}
