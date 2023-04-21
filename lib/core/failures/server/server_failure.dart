import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_failure.dart';

part 'server_failure.freezed.dart';

@freezed
abstract class Failures with _$Failures {
  const factory Failures.server({required String error}) = _Server;
  const factory Failures.timeout() = _TimeOut;
  const factory Failures.internetConnectionOut() = _InternetConnectionOut;

  const factory Failures.failedToDelete() = _FailedToDelete;
  const factory Failures.failedToSign() = _FailedToSign;
  const factory Failures.failedToUpdate() = _FailedToUpdate;
  const factory Failures.failedToSave() = _FailedToSave;
  const factory Failures.failedToGet() = _FailedToGet;
}
