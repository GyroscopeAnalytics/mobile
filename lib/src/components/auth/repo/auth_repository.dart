import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile/src/api/database_helper.dart';
import 'package:mobile/src/components/auth/models/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthRepository extends _$AuthRepository {
  @override
  Future<String> build() => future;

  // TODO: Actually make this return a string response and at the end return the response
  // To display in the Login UI
  Future<String?> loginRequest(String username, String password) async {
    final response =
        await http.post(Uri.parse('${DatabaseHelper.currentHost}token/'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'username': username,
              'password': password,
            }));
    try {
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final jwt = json['access'] as String;
        state = AsyncData(jwt);
        return null;
      } else {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final errorDetail = json['detail'] as String;
        return errorDetail;
      }
    } on FormatException {
      return 'Invalid response from server. Try again later.';
    }
  }

  Future<void> logoutRequest() async {
    // Check if token is available
    if (!state.hasValue) {
      return;
    }
    final response = await http.post(
      Uri.parse('${DatabaseHelper.currentHost}logout/'),
      headers: {'Cookie': '${state}'},
    );
    if (response.statusCode == 200) {
      ref.invalidateSelf();
    } else {
      // TODO: Check if there is a possible case if the user is already logged out
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final errorDetail = json['detail'] as String;
      print('Detail: $errorDetail');
      ref.invalidateSelf();
    }
  }
}

// Fetch user information using auth repository state token
@Riverpod(keepAlive: true)
Future<User> getUser(GetUserRef ref) async {
  final String auth = await ref.watch(authRepositoryProvider.future);

  // Get response by using Bearer token
  final response = await http.get(
    Uri.parse('${DatabaseHelper.currentHost}user/'),
    headers: {'Authorization': 'Bearer ${auth}'},
  );
  // final response = await http.get(
  //   Uri.parse('${DatabaseHelper.currentHost}user/'),
  //   headers: {'Cookie': 'jwt=${auth.jwt}'},
  // );

  // TODO: Add a check for status code, if 401, logout user

  return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
}
