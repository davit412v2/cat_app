import 'package:carousel_slider/carousel_slider.dart';
import 'package:cat_breed_app/home/ui/widget/breed_info.widget.dart';
import 'package:cat_breed_app/home/view_model/home.view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StackedView<HomeViewModel> {
  const HomeScreen({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text('Razas de Gatos')),
      body: viewModel.loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: viewModel.selectedBreed?.id,
                    hint: const Text('Seleccione una raza'),
                    items: viewModel.allBreeds
                        .map(
                          (b) => DropdownMenuItem<String>(
                            value: b.id,
                            child: Text(b.name ?? ''),
                          ),
                        )
                        .toList(),
                    onChanged: viewModel.onBreedSelected,
                  ),
                ),
                    if (viewModel.images.isNotEmpty)
                  CarouselSlider(
                    options: CarouselOptions(height: 200.0, enlargeCenterPage: true),
                    items: viewModel.images
                        .map((img) => Image.network(img.url ?? '', fit: BoxFit.cover))
                        .toList(),
                  ),
                if (viewModel.selectedBreed != null)
                  BreedInfoWidget(
                    breed: viewModel.selectedBreed!,
                    onPressed: viewModel.goToWikipediaScreen,
                  ),
              ],
            ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
