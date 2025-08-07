import 'package:flutter/material.dart';
import '../../domain/entities/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(user.name),
        subtitle: Text(user.username),
        trailing: Text(user.email),
      ),
    );
  }
}