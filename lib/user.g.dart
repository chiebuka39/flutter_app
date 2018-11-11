// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      login: json['login'] as String,
      id: json['id'] as int,
      node_id: json['node_id'] as String,
      avatar_url: json['avatar_url'] as String,
      name: json['name'] as String,
      company: json['company'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.node_id,
      'avatar_url': instance.avatar_url,
      'name': instance.name,
      'company': instance.company
    };
