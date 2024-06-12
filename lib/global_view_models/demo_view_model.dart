import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture/models/demo_list_model.dart';
import 'package:flutter_mvvm_architecture/repositories/demo_repository.dart';

class DemoViewModel extends Cubit<DemoListModel?> {
  final DemoRepository _repository;

  DemoViewModel(this._repository) : super(null) {
    _init();
  }

  Future<void> _init() async {
    final data = await _repository.fetchDemoData();
    emit(data);
  }
}
