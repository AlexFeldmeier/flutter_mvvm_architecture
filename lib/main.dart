import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture/global_view_models/demo_view_model.dart';
import 'package:flutter_mvvm_architecture/repositories/demo_repository.dart';
import 'package:flutter_mvvm_architecture/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Resources, Data Sources, Repositories
        Provider(
          create: (context) => DemoRepository(),
        ),
      ],
      builder: (context, child) => MultiBlocProvider(
        providers: [
          // Global View Models
          BlocProvider(
            create: (context) => DemoViewModel(
              context.read<DemoRepository>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          title: 'Flutter MVVM Architecture',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.blueGrey.shade100,
            appBarTheme: const AppBarTheme(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            listTileTheme: const ListTileThemeData(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
