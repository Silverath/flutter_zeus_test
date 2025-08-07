import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/get_users.dart';

class UserController extends StateNotifier<AsyncValue<List<User>>> {
  final GetUsers getUsers;

  UserController(this.getUsers) : super(const AsyncLoading()) {
    loadUsers();
  }

  Future<void> loadUsers() async {
    try {
      final users = await getUsers();
      state = AsyncData(users);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> refresh() => loadUsers();
}