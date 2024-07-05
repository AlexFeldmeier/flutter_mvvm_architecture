import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture/global_view_models/demo_view_model.dart';
import 'package:flutter_mvvm_architecture/models/demo_list_model.dart';

class DetailsScreen extends StatelessWidget {
  final String? id;

  const DetailsScreen({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID: $id'),
      ),
      body: Center(
        child: BlocBuilder<DemoViewModel, DemoListModel?>(
          builder: (context, state) {
            final model = context.read<DemoViewModel>().getModelById(id);

            // If no model found, display message
            if (model == null) {
              return const Text('No data found');
            }

            // Display model text
            return Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Text',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text(
                        model.text ?? 'No text found',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'ID',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text(
                        model.id ?? 'No ID found',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
