import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/src/components/auth/repo/auth_repository.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              ...[
                TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Your email address',
                    labelText: 'Email',
                  ),
                  onChanged: (value) {
                    email = value;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                TextButton(
                    child: const Text('Sign in'),
                    onPressed: () async {
                      // Turn this into guard clause
                      AsyncValue<String> result = await sendLoginRequest();
                      // TODO: Create a loading screen while waiting for the result
                      if (result.value != null) {
                        context.go('/');
                      } else {
                        loginFailure();
                      }
                    }),
                ElevatedButton(
                    onPressed: () {
                      final auth = ref.read(authRepositoryProvider);
                      print('Auth Value: ${auth.value}');
                    },
                    child: Text('Print Token')),
              ].expand(
                (widget) => [
                  widget,
                  const SizedBox(
                    height: 24,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<AsyncValue<String>> sendLoginRequest() async {
    await ref
        .read(authRepositoryProvider.notifier)
        .loginRequest(email, password);
    AsyncValue<String> result = ref.read(authRepositoryProvider);
    return result;
  }

  void loginFailure() {
    _passwordController.clear();
    _showDialog('Login Failed');
  }

  void _showDialog(String message) {
    showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(title: Text(message), actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ]));
  }
}
