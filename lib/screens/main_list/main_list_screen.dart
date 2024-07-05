import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture/global_view_models/demo_view_model.dart';
import 'package:flutter_mvvm_architecture/models/demo_list_model.dart';
import 'package:flutter_mvvm_architecture/screens/main_list/main_list_state.dart';
import 'package:flutter_mvvm_architecture/screens/main_list/main_list_view_model.dart';
import 'package:go_router/go_router.dart';

class MainListScreen extends StatelessWidget {
  const MainListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainListViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Main List'),
        ),
        body: BlocBuilder<DemoViewModel, DemoListModel?>(
          builder: (context, demoState) => demoState != null
              ? BlocBuilder<MainListViewModel, MainListState>(
                  builder: (context, state) => Column(
                    children: [
                      Expanded(
                        child: Card(
                          margin: const EdgeInsets.all(12),
                          child: ListView.separated(
                            padding: const EdgeInsets.all(16),
                            itemCount: demoState.demoData?.length ?? 0,
                            separatorBuilder: (context, index) => const SizedBox(height: 8),
                            itemBuilder: (context, index) {
                              final model = demoState.demoData![index];
                              return ListTile(
                                title: Text(model.text ?? ''),
                                subtitle: state.showDetails == true ? Text('ID: ${model.id}') : null,
                                onTap: () => context.go('/${model.id}'),
                              );
                            },
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.refresh),
                                title: const Text('Refresh'),
                                onTap: () => context.read<DemoViewModel>().refreshData(),
                              ),
                              const SizedBox(height: 12),
                              SwitchListTile(
                                title: const Text('Show Details'),
                                value: state.showDetails ?? false,
                                onChanged: (value) => context.read<MainListViewModel>().setShowDetails(value),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
