import 'package:flutter/material.dart';

class ItemBreedWidget extends StatelessWidget {
 // final Breed breed;
  final VoidCallback onTap;
  const ItemBreedWidget({super.key,  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container();
  //   return Card(
  // elevation: 2,
  // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  // child: ListTile(
  //   title: Text(breed.name ?? ''),
  //   subtitle: Text(breed.origin ?? ''),
  //   trailing: const Icon(Icons.arrow_forward_ios),
  //   onTap: onTap,
  // ),
  // );
  }

}