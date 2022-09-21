
import 'dart:convert';

UserModel   userModelFromJson(String str)  => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel{
  String? name;
  String? email;
  String? password;

  UserModel({this.name, this.email, this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json["name"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "password": password,
  };
}
