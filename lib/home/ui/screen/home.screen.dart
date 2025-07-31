import 'package:cat_breed_app/home/ui/widget/item_breed.widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, v) => ItemBreedWidget(onTap: (){}));
  }
}