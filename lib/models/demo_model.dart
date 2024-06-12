import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo_model.freezed.dart';
part 'demo_model.g.dart';

@freezed
class DemoModel with _$DemoModel {
  const factory DemoModel({
    String? id,
    String? text,
  }) = _DemoModel;

  factory DemoModel.fromJson(Map<String, dynamic> json) => _$DemoModelFromJson(json);
}
