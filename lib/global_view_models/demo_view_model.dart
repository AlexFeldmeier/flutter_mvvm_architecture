import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture/models/demo_list_model.dart';
import 'package:flutter_mvvm_architecture/models/demo_model.dart';
import 'package:flutter_mvvm_architecture/repositories/demo_repository.dart';

class DemoViewModel extends Cubit<DemoListModel?> {
  final DemoRepository _repository;

  DemoViewModel(this._repository) : super(null) {
    refreshData();
  }

  Future<void> refreshData() async {
    emit(null);
    final data = await _repository.fetchDemoData();
    emit(data);
  }

  DemoModel? getModelById(String? id) {
    if (id == null) {
      return null;
    }
    // Finds first model with matching ID
    try {
      return state?.demoData?.firstWhere((element) => element.id == id);
    } catch (e) {
      return null;
    }
  }
}
