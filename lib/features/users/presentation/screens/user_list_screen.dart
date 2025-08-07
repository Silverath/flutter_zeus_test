import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/user_providers.dart';
import '../widgets/user_card.dart';
import 'user_detail_screen.dart';
import '../../../../shared/widgets/loading_error.dart';

class UserListScreen extends ConsumerWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(userControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Usuarios')),
      body: usersAsync.when(
        data: (users) => RefreshIndicator(
          onRefresh: () async => ref.read(userControllerProvider.notifier).refresh(),
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => UserDetailScreen(user: users[index])),
              ),
              child: UserCard(user: users[index]),
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => ErrorRetry(onRetry: () => ref.read(userControllerProvider.notifier).refresh()),
      ),
    );
  }
}