import 'package:flutter_mvvm_architecture/models/demo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo_list_model.freezed.dart';
part 'demo_list_model.g.dart';

@freezed
class DemoListModel with _$DemoListModel {
  const factory DemoListModel({
    List<DemoModel>? demoData,
  }) = _DemoListModel;

  factory DemoListModel.fromJson(Map<String, dynamic> json) => _$DemoListModelFromJson(json);
}
