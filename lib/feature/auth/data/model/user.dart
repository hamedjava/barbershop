import 'package:test/feature/auth/domain/entities/user_register_entity.dart';

class UserModel extends UserRegisterEntity {
  const UserModel(
      {int? id, String? phoneNumber, String? firstName, String? lastName});

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
        phoneNumber: map['phoneNumber'] ?? "",
        firstName: map['firstName'] ?? "",
        lastName: map['lastName'] ?? "");
  }
}
