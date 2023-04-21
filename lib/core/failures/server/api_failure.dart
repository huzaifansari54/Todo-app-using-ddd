import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';
part 'api_failure.g.dart';

@freezed
abstract class ServerError with _$ServerError {
  const ServerError._();
  const factory ServerError({required ApiError error}) = _ServerError;
  factory ServerError.fromJson(Map<String, dynamic> json) =>
      _$ServerErrorFromJson(json);
}

@freezed
abstract class ApiError with _$ApiError {
  const ApiError._();
  const factory ApiError(
      {required String? error,
      required String? message,
      required String? type}) = _ApiError;
  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}
