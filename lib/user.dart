import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Object {

  final String login;
  final int id;
  final String node_id;
  final String avatar_url;
  final String name;
  final String company;

  User({this.login, this.id, this.node_id, this.avatar_url, this.name, this.company});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);


}
