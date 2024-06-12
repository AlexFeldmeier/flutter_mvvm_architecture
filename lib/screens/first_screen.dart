import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture/global_view_models/demo_view_model.dart';
import 'package:flutter_mvvm_architecture/models/demo_list_model.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: BlocBuilder<DemoViewModel, DemoListModel?>(
        builder: (context, state) => state != null
            ? ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: state.demoData?.length ?? 0,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final model = state.demoData![index];
                  return ListTile(
                    title: Text(model.text ?? ''),
                    subtitle: Text('ID: ${model.id}'),
                    onTap: () => context.go('/${model.id}'),
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
