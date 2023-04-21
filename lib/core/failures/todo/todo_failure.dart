import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_failure.freezed.dart';

@freezed
abstract class TodoFailure with _$TodoFailure {
  const factory TodoFailure.failedToSave() = _FailedToSave;
  const factory TodoFailure.failedToDelete() = _FailedToDelete;
  const factory TodoFailure.serverFailed() = _ServerFailed;
}
