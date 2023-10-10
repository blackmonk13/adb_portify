// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deviceinfo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceInfo {
  String get serial => throw _privateConstructorUsedError;
  DeviceState get state => throw _privateConstructorUsedError;
  String? get product => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get device => throw _privateConstructorUsedError;
  String? get transportId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceInfoCopyWith<DeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res, DeviceInfo>;
  @useResult
  $Res call(
      {String serial,
      DeviceState state,
      String? product,
      String? model,
      String? device,
      String? transportId});
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res, $Val extends DeviceInfo>
    implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? state = null,
    Object? product = freezed,
    Object? model = freezed,
    Object? device = freezed,
    Object? transportId = freezed,
  }) {
    return _then(_value.copyWith(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DeviceState,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      transportId: freezed == transportId
          ? _value.transportId
          : transportId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoImplCopyWith<$Res>
    implements $DeviceInfoCopyWith<$Res> {
  factory _$$DeviceInfoImplCopyWith(
          _$DeviceInfoImpl value, $Res Function(_$DeviceInfoImpl) then) =
      __$$DeviceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serial,
      DeviceState state,
      String? product,
      String? model,
      String? device,
      String? transportId});
}

/// @nodoc
class __$$DeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoImpl>
    implements _$$DeviceInfoImplCopyWith<$Res> {
  __$$DeviceInfoImplCopyWithImpl(
      _$DeviceInfoImpl _value, $Res Function(_$DeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? state = null,
    Object? product = freezed,
    Object? model = freezed,
    Object? device = freezed,
    Object? transportId = freezed,
  }) {
    return _then(_$DeviceInfoImpl(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DeviceState,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      transportId: freezed == transportId
          ? _value.transportId
          : transportId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceInfoImpl implements _DeviceInfo {
  _$DeviceInfoImpl(
      {required this.serial,
      this.state = DeviceState.unknown,
      this.product,
      this.model,
      this.device,
      this.transportId});

  @override
  final String serial;
  @override
  @JsonKey()
  final DeviceState state;
  @override
  final String? product;
  @override
  final String? model;
  @override
  final String? device;
  @override
  final String? transportId;

  @override
  String toString() {
    return 'DeviceInfo(serial: $serial, state: $state, product: $product, model: $model, device: $device, transportId: $transportId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoImpl &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.transportId, transportId) ||
                other.transportId == transportId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, serial, state, product, model, device, transportId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      __$$DeviceInfoImplCopyWithImpl<_$DeviceInfoImpl>(this, _$identity);
}

abstract class _DeviceInfo implements DeviceInfo {
  factory _DeviceInfo(
      {required final String serial,
      final DeviceState state,
      final String? product,
      final String? model,
      final String? device,
      final String? transportId}) = _$DeviceInfoImpl;

  @override
  String get serial;
  @override
  DeviceState get state;
  @override
  String? get product;
  @override
  String? get model;
  @override
  String? get device;
  @override
  String? get transportId;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
