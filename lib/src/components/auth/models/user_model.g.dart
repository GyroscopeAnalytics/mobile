// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      last_login: json['last_login'] as String?,
      is_superuser: json['is_superuser'] as bool?,
      is_staff: json['is_staff'] as bool?,
      is_active: json['is_active'] as bool?,
      date_joined: json['date_joined'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      mobile_no: json['mobile_no'] as String?,
      gender: json['gender'] as String?,
      status: json['status'] as String?,
      approved_date: json['approved_date'] as String?,
      update_date: json['update_date'] as String?,
      deleted: json['deleted'] as bool?,
      create_date: json['create_date'] as String?,
      role: (json['role'] as num?)?.toInt(),
      groups: json['groups'] as List<dynamic>?,
      user_permissions: json['user_permissions'] as List<dynamic>?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_login': instance.last_login,
      'is_superuser': instance.is_superuser,
      'is_staff': instance.is_staff,
      'is_active': instance.is_active,
      'date_joined': instance.date_joined,
      'username': instance.username,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'mobile_no': instance.mobile_no,
      'gender': instance.gender,
      'status': instance.status,
      'approved_date': instance.approved_date,
      'update_date': instance.update_date,
      'deleted': instance.deleted,
      'create_date': instance.create_date,
      'role': instance.role,
      'groups': instance.groups,
      'user_permissions': instance.user_permissions,
    };
