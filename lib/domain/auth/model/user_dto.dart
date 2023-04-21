import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/auth/user.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({required String uid, required String email}) =
      _UserModel;
  User toDomain() {
    return User(email: email, uid: uid);
  }

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
