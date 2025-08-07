import 'package:flutter/material.dart';

class ErrorRetry extends StatelessWidget {
  final VoidCallback onRetry;

  const ErrorRetry({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Error al cargar los datos.'),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Reintentar'),
          ),
        ],
      ),
    );
  }
}