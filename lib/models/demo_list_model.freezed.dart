// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demo_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DemoListModel _$DemoListModelFromJson(Map<String, dynamic> json) {
  return _DemoListModel.fromJson(json);
}

/// @nodoc
mixin _$DemoListModel {
  List<DemoModel>? get demoData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DemoListModelCopyWith<DemoListModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoListModelCopyWith<$Res> {
  factory $DemoListModelCopyWith(DemoListModel value, $Res Function(DemoListModel) then) =
      _$DemoListModelCopyWithImpl<$Res, DemoListModel>;

  @useResult
  $Res call({List<DemoModel>? demoData});
}

/// @nodoc
class _$DemoListModelCopyWithImpl<$Res, $Val extends DemoListModel> implements $DemoListModelCopyWith<$Res> {
  _$DemoListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? demoData = freezed,
  }) {
    return _then(_value.copyWith(
      demoData: freezed == demoData
          ? _value.demoData
          : demoData // ignore: cast_nullable_to_non_nullable
              as List<DemoModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemoListModelImplCopyWith<$Res> implements $DemoListModelCopyWith<$Res> {
  factory _$$DemoListModelImplCopyWith(_$DemoListModelImpl value, $Res Function(_$DemoListModelImpl) then) =
      __$$DemoListModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({List<DemoModel>? demoData});
}

/// @nodoc
class __$$DemoListModelImplCopyWithImpl<$Res> extends _$DemoListModelCopyWithImpl<$Res, _$DemoListModelImpl>
    implements _$$DemoListModelImplCopyWith<$Res> {
  __$$DemoListModelImplCopyWithImpl(_$DemoListModelImpl _value, $Res Function(_$DemoListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? demoData = freezed,
  }) {
    return _then(_$DemoListModelImpl(
      demoData: freezed == demoData
          ? _value._demoData
          : demoData // ignore: cast_nullable_to_non_nullable
              as List<DemoModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemoListModelImpl implements _DemoListModel {
  const _$DemoListModelImpl({final List<DemoModel>? demoData}) : _demoData = demoData;

  factory _$DemoListModelImpl.fromJson(Map<String, dynamic> json) => _$$DemoListModelImplFromJson(json);

  final List<DemoModel>? _demoData;

  @override
  List<DemoModel>? get demoData {
    final value = _demoData;
    if (value == null) return null;
    if (_demoData is EqualUnmodifiableListView) return _demoData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DemoListModel(demoData: $demoData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoListModelImpl &&
            const DeepCollectionEquality().equals(other._demoData, _demoData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_demoData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemoListModelImplCopyWith<_$DemoListModelImpl> get copyWith =>
      __$$DemoListModelImplCopyWithImpl<_$DemoListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DemoListModelImplToJson(
      this,
    );
  }
}

abstract class _DemoListModel implements DemoListModel {
  const factory _DemoListModel({final List<DemoModel>? demoData}) = _$DemoListModelImpl;

  factory _DemoListModel.fromJson(Map<String, dynamic> json) = _$DemoListModelImpl.fromJson;

  @override
  List<DemoModel>? get demoData;

  @override
  @JsonKey(ignore: true)
  _$$DemoListModelImplCopyWith<_$DemoListModelImpl> get copyWith => throw _privateConstructorUsedError;
}
