import 'package:json_annotation/json_annotation.dart';

part 'json_serializable_user.g.dart';

@JsonSerializable()
class User{
  late String id;
  late String name;
  late String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}