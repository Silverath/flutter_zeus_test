import 'package:flutter/material.dart';
import '../../domain/entities/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: ${user.name}'),
            Text('Usuario: ${user.username}'),
            Text('Email: ${user.email}'),
            Text('Teléfono: ${user.phone}'),
            Text('Website: ${user.website}'),
            const SizedBox(height: 12),
            Text('📍 Dirección: ${user.address}'),
            Text('🏢 Empresa: ${user.company.name}'),
            Text('💬 Frase: ${user.company.catchPhrase}'),
          ],
        ),
      ),
    );
  }
}