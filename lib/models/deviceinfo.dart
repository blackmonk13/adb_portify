
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deviceinfo.freezed.dart';


@freezed
class DeviceInfo with _$DeviceInfo {
  factory DeviceInfo({
    required String serial,
    @Default(DeviceState.unknown) DeviceState state,
    String? product,
    String? model,
    String? device,
    String? transportId,
  }) = _DeviceInfo;
}

enum DeviceState {
  offline,
  bootloader,
  device,
  host,
  recovery,
  sideload,
  unauthorized,
  unknown,
}

extension DeviceStateExtension on DeviceState {
  String get rawValue {
    switch (this) {
      case DeviceState.offline:
        return 'offline';
      case DeviceState.bootloader:
        return 'bootloader';
      case DeviceState.device:
        return 'device';
      case DeviceState.host:
        return 'host';
      case DeviceState.recovery:
        return 'recovery';
      case DeviceState.sideload:
        return 'sideload';
      case DeviceState.unauthorized:
        return 'unauthorized';
      case DeviceState.unknown:
      default:
        return 'unknown';
    }
  }
}

DeviceState deviceStateFromRawValue(String value) {
  for (var state in DeviceState.values) {
    if (state.rawValue == value) {
      return state;
    }
  }
  return DeviceState.unknown;
}
