import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/remote_datasource.dart';

class UserRepositoryImpl implements UserRepository {
  final RemoteDataSource remote;

  UserRepositoryImpl(this.remote);

  @override
  Future<List<User>> getUsers() => remote.fetchUsers();
}