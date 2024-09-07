import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:mobile/src/router/go_router.dart';
import 'package:mobile/src/components/auth/repo/auth_repository.dart';

late final SharedPreferences prefs;
void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.redAccent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));

  prefs = await SharedPreferences.getInstance();
  runApp(const ProviderScope(observers: [
    //MyObserver(),
  ], child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return _EagerInitialization(
        child: MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Rice Dealer POS',
      //theme: darkTheme,
    ));
  }
}

class _EagerInitialization extends ConsumerWidget {
  final Widget child;
  const _EagerInitialization({required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Initialize the providers that will be used throughout the app
    ref.watch(authRepositoryProvider);
    ref.watch(getUserProvider);

    return child;
  }
}
