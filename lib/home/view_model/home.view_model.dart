import 'package:cat_breed_app/api/service/cat.service.dart';
import 'package:cat_breed_app/core/app_setup.router.dart';
import 'package:cat_breed_app/core/setup_locator.dart';
import 'package:cat_breed_app/models/breed.model.dart';
import 'package:cat_breed_app/models/image_breed.model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


/// Aquí se administra la logica de HomeScreen
class HomeViewModel extends ReactiveViewModel {
  final _catService = locator<CatService>();
  final _navigationService = locator<NavigationService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [_catService];

  HomeViewModel() {
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

  /// Método que permite guardar la selecion de la lista
  /// del dropdown.
  void onBreedSelected(String? value) {
    selectedBreed = null;
    selectedBreed = allBreeds.firstWhere((b) => b.id == value);
    loadImagesForBreed(selectedBreed);
    rebuildUi();
  }

/// Inicializa las imagenes que se muestra en el carrusel.
  void initSelectedBreed() async {
    if (allBreeds.isNotEmpty) {
      selectedBreed = allBreeds.firstOrNull;
      await loadImagesForBreed(selectedBreed!);
    }
  }

/// Método que permite hacer el llamado al service para 
/// obtener las imagenes de las razas de gato.
  Future<void> loadImagesForBreed(Breed? breed) async {
    if (breed == null) return;
    _catService.getImagesForBreed(breed.id!);
  }

/// Redirecionamiento a  WikipediaScreen
  void goToWikipediaScreen() {
    _navigationService.navigateToWikipediaScreen();
  }
}
