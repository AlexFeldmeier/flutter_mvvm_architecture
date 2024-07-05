// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainListState _$MainListStateFromJson(Map<String, dynamic> json) {
  return _MainListState.fromJson(json);
}

/// @nodoc
mixin _$MainListState {
  bool? get showDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainListStateCopyWith<MainListState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainListStateCopyWith<$Res> {
  factory $MainListStateCopyWith(MainListState value, $Res Function(MainListState) then) =
      _$MainListStateCopyWithImpl<$Res, MainListState>;

  @useResult
  $Res call({bool? showDetails});
}

/// @nodoc
class _$MainListStateCopyWithImpl<$Res, $Val extends MainListState> implements $MainListStateCopyWith<$Res> {
  _$MainListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDetails = freezed,
  }) {
    return _then(_value.copyWith(
      showDetails: freezed == showDetails
          ? _value.showDetails
          : showDetails // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainListStateImplCopyWith<$Res> implements $MainListStateCopyWith<$Res> {
  factory _$$MainListStateImplCopyWith(_$MainListStateImpl value, $Res Function(_$MainListStateImpl) then) =
      __$$MainListStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({bool? showDetails});
}

/// @nodoc
class __$$MainListStateImplCopyWithImpl<$Res> extends _$MainListStateCopyWithImpl<$Res, _$MainListStateImpl>
    implements _$$MainListStateImplCopyWith<$Res> {
  __$$MainListStateImplCopyWithImpl(_$MainListStateImpl _value, $Res Function(_$MainListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDetails = freezed,
  }) {
    return _then(_$MainListStateImpl(
      showDetails: freezed == showDetails
          ? _value.showDetails
          : showDetails // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainListStateImpl implements _MainListState {
  const _$MainListStateImpl({this.showDetails});

  factory _$MainListStateImpl.fromJson(Map<String, dynamic> json) => _$$MainListStateImplFromJson(json);

  @override
  final bool? showDetails;

  @override
  String toString() {
    return 'MainListState(showDetails: $showDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainListStateImpl &&
            (identical(other.showDetails, showDetails) || other.showDetails == showDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, showDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainListStateImplCopyWith<_$MainListStateImpl> get copyWith =>
      __$$MainListStateImplCopyWithImpl<_$MainListStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainListStateImplToJson(
      this,
    );
  }
}

abstract class _MainListState implements MainListState {
  const factory _MainListState({final bool? showDetails}) = _$MainListStateImpl;

  factory _MainListState.fromJson(Map<String, dynamic> json) = _$MainListStateImpl.fromJson;

  @override
  bool? get showDetails;

  @override
  @JsonKey(ignore: true)
  _$$MainListStateImplCopyWith<_$MainListStateImpl> get copyWith => throw _privateConstructorUsedError;
}
