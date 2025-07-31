import 'package:carousel_slider/carousel_slider.dart';
import 'package:cat_breed_app/voting/view_model/vote.view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VoteScreen extends StackedView<VoteViewModel> {
  const VoteScreen({super.key});

  @override
  Widget builder(BuildContext context, VoteViewModel viewModel, Widget? child) {
    return Center(
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.primaryDelta! < 0 &&
              viewModel.currentIndex >= viewModel.maxIndex) {
          } else if (details.primaryDelta! > 0 && viewModel.currentIndex <= 0) {
          } else {
            viewModel.controller.nextPage();
          }
        },
        child: CarouselSlider(
          carouselController: viewModel.controller,
          options: CarouselOptions(
            height: 450,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              viewModel.currentIndex = index;
            },
          ),
          items: viewModel.images.map((img) {
            return SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network(
                      img.image?.url ?? '',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      img.name ?? '',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.thumb_up,
                            color: Colors.green,
                            size: 32,
                          ),
                          onPressed: () => viewModel.vote(img.id, true),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.thumb_down,
                            color: Colors.red,
                            size: 32,
                          ),
                          onPressed: () => viewModel.vote(img.id, false),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  VoteViewModel viewModelBuilder(BuildContext context) => VoteViewModel();
}
