import 'package:equatable/equatable.dart';

class PostModel extends Equatable {
  // {
  // "id": 1,
  // "content": "first post ",
  // "dateTime": "2024-03-29T00:18:42.07361",
  // "createdSince": "منذ 28 يوم",
  // "imagesUrl": [
  // "https://khaier-production.up.railway.app/api/v1/post/image/6478230.png-791ba43b-9c4a-437e-9025-7943350d86eb",
  // "https://khaier-production.up.railway.app/api/v1/post/image/images.png-692d6742-b388-46f1-92b8-6cea4d0bf8c4"
  // ],
  // "userId": 1,
  // "isUserLike": true,
  // "userName": "ahmed",
  // "userImage": "https://khaier-production.up.railway.app/api/v1/auth/image/github.jpg-c91d6c51-b4b9-477e-894e-d6db0e5c57d8",
  // "numberOfLikes": 2,
  // "numberOfComments": 2
  // },
  final int postId;
  final String content;
  final DateTime dateTime;
  final String createdSince;
  final List<String> images;
  final int userId;
   bool isUserLike;
  final String userName;
  final String userImage;
   int numberOfLikes;
   int numberOfComments;
  PostModel(
      {required this.userId,
      required this.images,
      required this.content,
      required this.createdSince,
      required this.dateTime,
      required this.isUserLike,
      required this.numberOfComments,
      required this.numberOfLikes,
      required this.postId,
      required this.userImage,
      required this.userName});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        userId: json["userId"],
        images: List<String>.from(json["imagesUrl"]),
        content: json["content"],
        createdSince: json["createdSince"],
        dateTime: DateTime.parse(json["dateTime"]),
        isUserLike: json["isUserLike"],
        numberOfComments: json["numberOfComments"],
        numberOfLikes: json["numberOfLikes"],
        postId: json["id"],
        userImage: json["userImage"],
        userName: json["userName"]);
  }

  PostModel copyWith({
    int? postId,
    String? content,
    DateTime? dateTime,
    String? createdSince,
    List<String>? images,
    int? userId,
    bool? isUserLike,
    String? userName,
    String? userImage,
    int? numberOfLikes,
    int? numberOfComments,
  }) {
    return PostModel(
        userId: userId ?? this.userId,
        images: images ?? this.images,
        content: content ?? this.content,
        createdSince: createdSince ?? this.createdSince,
        dateTime: dateTime ?? this.dateTime,
        isUserLike: isUserLike ?? this.isUserLike,
        numberOfComments: numberOfComments ?? this.numberOfComments,
        numberOfLikes: numberOfLikes ?? this.numberOfLikes,
        postId: postId ?? this.postId,
        userImage: userImage ?? this.userImage,
        userName: userName ?? this.userName);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [postId];
}
