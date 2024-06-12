import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture/global_view_models/demo_view_model.dart';
import 'package:flutter_mvvm_architecture/models/demo_list_model.dart';
import 'package:flutter_mvvm_architecture/models/demo_model.dart';

class SecondScreen extends StatelessWidget {
  final String? id;

  const SecondScreen({
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
            // Finds first model with matching ID
            late final DemoModel? model;
            try {
              model = state?.demoData?.firstWhere((element) => element.id == id);
            } catch (e) {
              model = null;
            }

            // If no model found, display message
            if (model == null) {
              return const Text('No data found');
            }

            // Display model text
            return Text(model.text ?? 'No text found');
          },
        ),
      ),
    );
  }
}
