import 'user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';


@JsonSerializable()
class Users extends Object {

  @JsonKey(name: "items")
  final List<User> users;
  final int total_count;


  Users({this.users, this.total_count});

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
