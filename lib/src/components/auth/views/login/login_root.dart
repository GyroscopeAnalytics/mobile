import 'package:flutter/material.dart';
import 'package:mobile/src/components/auth/views/login/sections/login_form.dart';
import 'package:mobile/src/components/auth/views/login/sections/welcome_section.dart';

class LoginRoot extends StatelessWidget {
  const LoginRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Row(
          children: [
            Expanded(
              flex: 50,
              child: WelcomeSection(),
            ),
            Expanded(
              flex: 50,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: LoginForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
