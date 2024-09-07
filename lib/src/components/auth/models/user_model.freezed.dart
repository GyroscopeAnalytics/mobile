// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String? get last_login => throw _privateConstructorUsedError;
  bool? get is_superuser => throw _privateConstructorUsedError;
  bool? get is_staff => throw _privateConstructorUsedError;
  bool? get is_active => throw _privateConstructorUsedError;
  String? get date_joined => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get mobile_no => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get approved_date => throw _privateConstructorUsedError;
  String? get update_date => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  String? get create_date => throw _privateConstructorUsedError;
  int? get role => throw _privateConstructorUsedError;
  List<dynamic>? get groups => throw _privateConstructorUsedError;
  List<dynamic>? get user_permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String? last_login,
      bool? is_superuser,
      bool? is_staff,
      bool? is_active,
      String? date_joined,
      String? username,
      String? email,
      String? first_name,
      String? last_name,
      String? mobile_no,
      String? gender,
      String? status,
      String? approved_date,
      String? update_date,
      bool? deleted,
      String? create_date,
      int? role,
      List<dynamic>? groups,
      List<dynamic>? user_permissions});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? last_login = freezed,
    Object? is_superuser = freezed,
    Object? is_staff = freezed,
    Object? is_active = freezed,
    Object? date_joined = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? mobile_no = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? approved_date = freezed,
    Object? update_date = freezed,
    Object? deleted = freezed,
    Object? create_date = freezed,
    Object? role = freezed,
    Object? groups = freezed,
    Object? user_permissions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      last_login: freezed == last_login
          ? _value.last_login
          : last_login // ignore: cast_nullable_to_non_nullable
              as String?,
      is_superuser: freezed == is_superuser
          ? _value.is_superuser
          : is_superuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_staff: freezed == is_staff
          ? _value.is_staff
          : is_staff // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      date_joined: freezed == date_joined
          ? _value.date_joined
          : date_joined // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      approved_date: freezed == approved_date
          ? _value.approved_date
          : approved_date // ignore: cast_nullable_to_non_nullable
              as String?,
      update_date: freezed == update_date
          ? _value.update_date
          : update_date // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      create_date: freezed == create_date
          ? _value.create_date
          : create_date // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user_permissions: freezed == user_permissions
          ? _value.user_permissions
          : user_permissions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? last_login,
      bool? is_superuser,
      bool? is_staff,
      bool? is_active,
      String? date_joined,
      String? username,
      String? email,
      String? first_name,
      String? last_name,
      String? mobile_no,
      String? gender,
      String? status,
      String? approved_date,
      String? update_date,
      bool? deleted,
      String? create_date,
      int? role,
      List<dynamic>? groups,
      List<dynamic>? user_permissions});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? last_login = freezed,
    Object? is_superuser = freezed,
    Object? is_staff = freezed,
    Object? is_active = freezed,
    Object? date_joined = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? mobile_no = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? approved_date = freezed,
    Object? update_date = freezed,
    Object? deleted = freezed,
    Object? create_date = freezed,
    Object? role = freezed,
    Object? groups = freezed,
    Object? user_permissions = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      last_login: freezed == last_login
          ? _value.last_login
          : last_login // ignore: cast_nullable_to_non_nullable
              as String?,
      is_superuser: freezed == is_superuser
          ? _value.is_superuser
          : is_superuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_staff: freezed == is_staff
          ? _value.is_staff
          : is_staff // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      date_joined: freezed == date_joined
          ? _value.date_joined
          : date_joined // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      approved_date: freezed == approved_date
          ? _value.approved_date
          : approved_date // ignore: cast_nullable_to_non_nullable
              as String?,
      update_date: freezed == update_date
          ? _value.update_date
          : update_date // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      create_date: freezed == create_date
          ? _value.create_date
          : create_date // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user_permissions: freezed == user_permissions
          ? _value._user_permissions
          : user_permissions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      this.last_login,
      this.is_superuser,
      this.is_staff,
      this.is_active,
      this.date_joined,
      this.username,
      this.email,
      this.first_name,
      this.last_name,
      this.mobile_no,
      this.gender,
      this.status,
      this.approved_date,
      this.update_date,
      this.deleted,
      this.create_date,
      this.role,
      final List<dynamic>? groups,
      final List<dynamic>? user_permissions})
      : _groups = groups,
        _user_permissions = user_permissions;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String? last_login;
  @override
  final bool? is_superuser;
  @override
  final bool? is_staff;
  @override
  final bool? is_active;
  @override
  final String? date_joined;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? mobile_no;
  @override
  final String? gender;
  @override
  final String? status;
  @override
  final String? approved_date;
  @override
  final String? update_date;
  @override
  final bool? deleted;
  @override
  final String? create_date;
  @override
  final int? role;
  final List<dynamic>? _groups;
  @override
  List<dynamic>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _user_permissions;
  @override
  List<dynamic>? get user_permissions {
    final value = _user_permissions;
    if (value == null) return null;
    if (_user_permissions is EqualUnmodifiableListView)
      return _user_permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'User(id: $id, last_login: $last_login, is_superuser: $is_superuser, is_staff: $is_staff, is_active: $is_active, date_joined: $date_joined, username: $username, email: $email, first_name: $first_name, last_name: $last_name, mobile_no: $mobile_no, gender: $gender, status: $status, approved_date: $approved_date, update_date: $update_date, deleted: $deleted, create_date: $create_date, role: $role, groups: $groups, user_permissions: $user_permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.last_login, last_login) ||
                other.last_login == last_login) &&
            (identical(other.is_superuser, is_superuser) ||
                other.is_superuser == is_superuser) &&
            (identical(other.is_staff, is_staff) ||
                other.is_staff == is_staff) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.date_joined, date_joined) ||
                other.date_joined == date_joined) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.mobile_no, mobile_no) ||
                other.mobile_no == mobile_no) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.approved_date, approved_date) ||
                other.approved_date == approved_date) &&
            (identical(other.update_date, update_date) ||
                other.update_date == update_date) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.create_date, create_date) ||
                other.create_date == create_date) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._user_permissions, _user_permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        last_login,
        is_superuser,
        is_staff,
        is_active,
        date_joined,
        username,
        email,
        first_name,
        last_name,
        mobile_no,
        gender,
        status,
        approved_date,
        update_date,
        deleted,
        create_date,
        role,
        const DeepCollectionEquality().hash(_groups),
        const DeepCollectionEquality().hash(_user_permissions)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      final String? last_login,
      final bool? is_superuser,
      final bool? is_staff,
      final bool? is_active,
      final String? date_joined,
      final String? username,
      final String? email,
      final String? first_name,
      final String? last_name,
      final String? mobile_no,
      final String? gender,
      final String? status,
      final String? approved_date,
      final String? update_date,
      final bool? deleted,
      final String? create_date,
      final int? role,
      final List<dynamic>? groups,
      final List<dynamic>? user_permissions}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String? get last_login;
  @override
  bool? get is_superuser;
  @override
  bool? get is_staff;
  @override
  bool? get is_active;
  @override
  String? get date_joined;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get mobile_no;
  @override
  String? get gender;
  @override
  String? get status;
  @override
  String? get approved_date;
  @override
  String? get update_date;
  @override
  bool? get deleted;
  @override
  String? get create_date;
  @override
  int? get role;
  @override
  List<dynamic>? get groups;
  @override
  List<dynamic>? get user_permissions;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
