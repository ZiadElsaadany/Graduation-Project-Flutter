// "userId": 4,
// "name": "ziad elsaadany test",
// "email": "ziad123@gmail.com",
// "phone": "11111111111",
// "imageUrl": "https://khaier-production.up.railway.app/api/v1/auth/image/image 21 (1).png-168d8607-be1c-473d-abf5-dd399c6d4f33",
// "gender": "Male",
// "role": "ROLE_USER"

class UserModel  {
  final String userId;
  final String name ;
  final String email ;
  final String phone;
  final String imageUrl;
  final String gender ;
  final String role;

  const UserModel(
   {
    required this.name,
     required this.email,
     required this.gender,
     required this.imageUrl,
     required this.phone,
     required this.role,
     required this.userId
}
      );

  factory UserModel.fromJson( Map<String,dynamic> json) {
    return UserModel(name: json["name"], email: json["email"], gender: json["gender"],
        imageUrl: json["imageUrl"],
        phone: json["phone"],
        role: json["role"], userId: json["userId"]);
  }

}