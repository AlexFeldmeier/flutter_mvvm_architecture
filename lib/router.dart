import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/screens/details/details_screen.dart';
import 'package:flutter_mvvm_architecture/screens/main_list/main_list_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // Param names
  static const String _idParam = 'id';

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => const MaterialPage(child: MainListScreen()),
        routes: [
          GoRoute(
            path: ':$_idParam',
            pageBuilder: (context, state) => MaterialPage(
              child: DetailsScreen(
                id: state.pathParameters[_idParam],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
