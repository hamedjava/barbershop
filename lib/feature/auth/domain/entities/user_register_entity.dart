import 'package:equatable/equatable.dart';

class UserRegisterEntity extends Equatable {
  final int? id;
  final String? phoneNumber;
  final String? firstName;
  final String? lastName;

  const UserRegisterEntity(
      {this.id, this.phoneNumber, this.firstName, this.lastName});

  @override
  List<Object?> get props {
    return [
      id,
      phoneNumber,
      firstName,
      lastName,
    ];
  }
}
