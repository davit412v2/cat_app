import 'package:cat_breed_app/api/service/cat.service.dart';
import 'package:cat_breed_app/core/app_setup.router.dart';
import 'package:cat_breed_app/core/setup_locator.dart';
import 'package:cat_breed_app/models/breed.model.dart';
import 'package:cat_breed_app/models/image_breed.model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel {
  final _catService = locator<CatService>();
  final _navigationService = locator<NavigationService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [_catService];

  HomeViewModel(){
    initSelectedBreed();
  }

  bool get loading => _catService.loadingValue.value;

  List<Breed> get allBreeds => _catService.allBreedsValue.value;

  List<ImageBreed> get imagesForBreed => _catService.imagesForBreedValue.value;

  Breed? get selectedBreed => _catService.selectedBreedValue.value;

  List<ImageBreed> get images => _catService.imagesForBreedValue.value;

  set selectedBreed(Breed? value) {
    _catService.selectedBreedValue.value = value;
  }

  void onBreedSelected(String? value) {
    selectedBreed = allBreeds.firstWhere((b) => b.id == value);
    loadImagesForBreed(selectedBreed);
    rebuildUi();
  }

  void initSelectedBreed() async {

        if (allBreeds.isNotEmpty) {
      await loadImagesForBreed(selectedBreed!);
    }
  }
  
  Future<void> loadImagesForBreed(Breed? breed) async {
    if(breed == null) return; 
    _catService.getImagesForBreed(breed.id!);
  }

  void goToWikipediaScreen() {
    _navigationService.navigateToWikipediaScreen();
  }
}
