
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portinfo.freezed.dart';


@freezed
class PortInfo with _$PortInfo {
  factory PortInfo({
    required String serial,
    required String localPort,
    required String remotePort,
    @Default("tcp") String protocol,
  }) = _PortInfo;
	
}
