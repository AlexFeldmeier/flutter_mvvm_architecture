import 'dart:math';

import 'package:flutter_mvvm_architecture/models/demo_list_model.dart';
import 'package:flutter_mvvm_architecture/models/demo_model.dart';
import 'package:uuid/uuid.dart';

class DemoRepository {
  DemoRepository();

  Future<DemoListModel?> fetchDemoData() async {
    await Future.delayed(const Duration(seconds: 2));

    final random = Random();
    final dataList = List<DemoModel>.generate(100, (index) {
      return DemoModel(
        id: const Uuid().v4(),
        text: 'Random number: ${random.nextInt(1000000)}',
      );
    });
    return DemoListModel(
      demoData: dataList,
    );
  }
}
