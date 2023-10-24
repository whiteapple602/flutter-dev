import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screens/catalog.dart';
import 'package:flutter_application_1/src/screens/login.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/src/models/catalog.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(create: (context) => CatalogModel())
    ],
    child: MaterialApp.router(
      title: 'Provider Demo',
      routerConfig: router(),
    ));
  }
}

GoRouter router() {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const MyLogin(),
      ),
      GoRoute(
        path: '/catalog',
        builder: (context, state) => const MyCatalog(),
        // routes: [
        //   GoRoute(
        //     path: 'cart',
        //     builder: (context, state) => const MyCart(),
        //   ),
        // ],
      ),
    ],
  );
}