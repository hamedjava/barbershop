import 'package:test/core/resources/data_state.dart';
import 'package:test/feature/auth/domain/repository/register_repository.dart';
import 'package:test/feature/auth/data/model/user.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  @override
  Future<DataState<List<UserModel>>> getUsers() {
    // TODO: implement getUsers
    throw UnimplementedError();
  }
}
