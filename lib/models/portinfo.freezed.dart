// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portinfo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortInfo {
  String get serial => throw _privateConstructorUsedError;
  String get localPort => throw _privateConstructorUsedError;
  String get remotePort => throw _privateConstructorUsedError;
  String get protocol => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortInfoCopyWith<PortInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortInfoCopyWith<$Res> {
  factory $PortInfoCopyWith(PortInfo value, $Res Function(PortInfo) then) =
      _$PortInfoCopyWithImpl<$Res, PortInfo>;
  @useResult
  $Res call(
      {String serial, String localPort, String remotePort, String protocol});
}

/// @nodoc
class _$PortInfoCopyWithImpl<$Res, $Val extends PortInfo>
    implements $PortInfoCopyWith<$Res> {
  _$PortInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? localPort = null,
    Object? remotePort = null,
    Object? protocol = null,
  }) {
    return _then(_value.copyWith(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      localPort: null == localPort
          ? _value.localPort
          : localPort // ignore: cast_nullable_to_non_nullable
              as String,
      remotePort: null == remotePort
          ? _value.remotePort
          : remotePort // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortInfoImplCopyWith<$Res>
    implements $PortInfoCopyWith<$Res> {
  factory _$$PortInfoImplCopyWith(
          _$PortInfoImpl value, $Res Function(_$PortInfoImpl) then) =
      __$$PortInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serial, String localPort, String remotePort, String protocol});
}

/// @nodoc
class __$$PortInfoImplCopyWithImpl<$Res>
    extends _$PortInfoCopyWithImpl<$Res, _$PortInfoImpl>
    implements _$$PortInfoImplCopyWith<$Res> {
  __$$PortInfoImplCopyWithImpl(
      _$PortInfoImpl _value, $Res Function(_$PortInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? localPort = null,
    Object? remotePort = null,
    Object? protocol = null,
  }) {
    return _then(_$PortInfoImpl(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      localPort: null == localPort
          ? _value.localPort
          : localPort // ignore: cast_nullable_to_non_nullable
              as String,
      remotePort: null == remotePort
          ? _value.remotePort
          : remotePort // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PortInfoImpl implements _PortInfo {
  _$PortInfoImpl(
      {required this.serial,
      required this.localPort,
      required this.remotePort,
      this.protocol = "tcp"});

  @override
  final String serial;
  @override
  final String localPort;
  @override
  final String remotePort;
  @override
  @JsonKey()
  final String protocol;

  @override
  String toString() {
    return 'PortInfo(serial: $serial, localPort: $localPort, remotePort: $remotePort, protocol: $protocol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortInfoImpl &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.localPort, localPort) ||
                other.localPort == localPort) &&
            (identical(other.remotePort, remotePort) ||
                other.remotePort == remotePort) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, serial, localPort, remotePort, protocol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortInfoImplCopyWith<_$PortInfoImpl> get copyWith =>
      __$$PortInfoImplCopyWithImpl<_$PortInfoImpl>(this, _$identity);
}

abstract class _PortInfo implements PortInfo {
  factory _PortInfo(
      {required final String serial,
      required final String localPort,
      required final String remotePort,
      final String protocol}) = _$PortInfoImpl;

  @override
  String get serial;
  @override
  String get localPort;
  @override
  String get remotePort;
  @override
  String get protocol;
  @override
  @JsonKey(ignore: true)
  _$$PortInfoImplCopyWith<_$PortInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
