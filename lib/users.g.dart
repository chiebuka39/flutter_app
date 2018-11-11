// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users(
      users: (json['items'] as List)
          ?.map((e) =>
              e == null ? null : User.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      total_count: json['total_count'] as int);
}

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'items': instance.users,
      'total_count': instance.total_count
    };
