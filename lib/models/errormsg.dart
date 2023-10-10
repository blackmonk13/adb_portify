import 'package:freezed_annotation/freezed_annotation.dart';

part 'errormsg.freezed.dart';

@freezed
class ErrorMsg with _$ErrorMsg {
  factory ErrorMsg({
    @Default("0000") String code,
    @Default("Unknown error") String brief,
    String? details,
    String? solution,
  }) = _ErrorMsg;
}
