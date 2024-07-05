import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_list_state.freezed.dart';
part 'main_list_state.g.dart';

@freezed
class MainListState with _$MainListState {
  const factory MainListState({
    bool? showDetails,
  }) = _MainListState;

  factory MainListState.fromJson(Map<String, dynamic> json) => _$MainListStateFromJson(json);
}
