import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/screens/first_screen.dart';
import 'package:flutter_mvvm_architecture/screens/second_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // Param names
  static const String _idParam = 'id';

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => const MaterialPage(child: FirstScreen()),
        routes: [
          GoRoute(
            path: ':$_idParam',
            pageBuilder: (context, state) => MaterialPage(
              child: SecondScreen(
                id: state.pathParameters[_idParam],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
