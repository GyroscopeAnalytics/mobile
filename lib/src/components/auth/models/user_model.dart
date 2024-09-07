import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
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
    List<dynamic>? user_permissions,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
