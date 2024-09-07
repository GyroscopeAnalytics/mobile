import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/src/components/auth/repo/auth_repository.dart';
import 'package:mobile/src/constant.dart';

class DrawerNavigation extends ConsumerWidget {
  DrawerNavigation({super.key});

  final List<Map<String, dynamic>> drawerItems = [
    {
      'icon': Icons.local_grocery_store_outlined,
      'title': 'Dashboard',
      'route': '/',
    },
    {
      'icon': Icons.attach_money_outlined,
      'title': 'Settings',
      'route': '/settings',
    }
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: primaryColor,
      child: ListView.builder(
        itemCount: drawerItems.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              height: 80.0,
              alignment: Alignment.centerRight,
              child: const Text(
                'Gyroscope',
                style: TextStyle(fontSize: 20.0),
              ),
            );
          }
          final item = drawerItems[index - 1];
          return ListTile(
            contentPadding: const EdgeInsets.all(5.0),
            leading: item['icon'] != null
                ? Icon(
                    item['icon'] as IconData,
                    size: 25,
                  )
                : null,
            title: Text(
              item['title'] as String,
            ),
            onTap: () async {
              if (item['title'] == 'Logout') {
                await ref
                    .watch(authRepositoryProvider.notifier)
                    .logoutRequest();
              } else {
                context.go(item['route'] as String);
                Navigator.pop(context);
              }
            },
          );
        },
      ),
    );
  }
}
