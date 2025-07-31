import 'package:cat_breed_app/models/breed.model.dart';
import 'package:flutter/material.dart';

class BreedInfoWidget extends StatelessWidget {
  final Breed breed;
  final VoidCallback? onPressed;
  const BreedInfoWidget({super.key, required this.breed, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: ${breed.name}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Origen: ${breed.origin}'),
            Text('Inteligencia: ${breed.intelligence}'),
            Text('Esperanza de vida: ${breed.lifeSpan} años'),
            const SizedBox(height: 10),
            Text(breed.description ?? ''),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: onPressed,
              child: const Text('Ver más en Wikipedia'),
            ),
          ],
        ),
      ),
    );
  }
}
