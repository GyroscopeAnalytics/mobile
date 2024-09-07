import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:prd_pos/src/utils/branch_name_text.dart';
import 'package:mobile/src/utils/navigator.dart';
import 'clock.dart';

class MainScreen extends StatelessWidget {
  final String title;
  final Widget child;
  const MainScreen({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.redAccent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        title: Text(title),
        toolbarHeight: 50.0,
        actions: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: BranchNameText(),
          // ),
          Container(
            height: 25,
            width: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Clock(),
          ),
        ],
      ),
      body: child,
      drawer: Drawer(
        width: 300.0,
        child: DrawerNavigation(),
      ),
    );
  }
}
