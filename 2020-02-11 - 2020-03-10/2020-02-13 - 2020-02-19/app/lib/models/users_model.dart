class UsersModel {
  String image;
  String name;
  String email;
  int phone;
  String bio;

  UsersModel({this.image, this.name, this.email, this.phone, this.bio});
  @override
  String toString() {
    return '{image: $image, name: $name, email: $email, phone: $phone, bio: $bio}';
  }

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
      image: json["image"],
      name: json["name"],
      email: json["email"],
      phone: int.parse(json["phone"]),
      bio: json["bio"],
    );
  }
}
