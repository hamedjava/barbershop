import 'package:test/core/resources/data_state.dart';
import 'package:test/feature/auth/domain/entities/user_register_entity.dart';

abstract class RegisterRepository {
  Future<DataState<List<UserRegisterEntity>>> getUsers();
}
