import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/datasources/remote_datasource.dart';
import '../data/repositories/user_repository_impl.dart';
import '../domain/usecases/get_users.dart';
import '../domain/entities/user.dart';
import '../presentation/controllers/user_controller.dart';

final remoteDataSourceProvider = Provider((_) => RemoteDataSource());

final userRepositoryProvider = Provider((ref) =>
    UserRepositoryImpl(ref.watch(remoteDataSourceProvider)));

final getUsersProvider = Provider((ref) =>
    GetUsers(ref.watch(userRepositoryProvider)));

final userControllerProvider = StateNotifierProvider<UserController, AsyncValue<List<User>>>(
  (ref) => UserController(ref.watch(getUsersProvider)),
);