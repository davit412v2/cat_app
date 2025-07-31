import 'package:cat_breed_app/api/repository/cat_repository.dart';
import 'package:cat_breed_app/core/base_service.dart';
import 'package:cat_breed_app/models/breed.model.dart';
import 'package:cat_breed_app/models/image_breed.model.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';


/// `CatService` es una clase de servicio responsable de manejar la lógica
/// relacionada con las razas de gatos y sus imágenes, utilizando el patrón
/// `ReactiveValue` y siguiendo la arquitectura `Stacked`.
///
/// Este servicio interactúa con la clase `CatRepository` para obtener datos
/// desde la API pública de TheCatAPI, y expone los resultados mediante valores
/// reactivos para que puedan ser observados por los ViewModels o UI.
class CatService extends BaseService {
  var logger = Logger();
  final CatRepository _repository;

  final allBreedsValue = ReactiveValue<List<Breed>>([]);
  final breedDetailsValue = ReactiveValue<Breed?>(null);
  final searchBreedsValue = ReactiveValue<List<Breed>>([]);
  final imagesForBreedValue = ReactiveValue<List<ImageBreed>>([]);
  final selectedBreedValue = ReactiveValue<Breed?>(null);

  

  CatService(this._repository) {
    listenToReactiveValues([
      loadingValue,
      allBreedsValue,
      breedDetailsValue,
      searchBreedsValue,
      imagesForBreedValue,
      selectedBreedValue,
    ]);
  }


  /// Obtiene la lista de todas las razas de gatos disponibles.
  ///
  /// Llama al método `getBreeds` del repository y asigna el resultado
  /// a `allBreedsValue`.
  Future<void> getAllBreeds() {
    return _repository
        .getBreeds()
        .then((response) {
          allBreedsValue.value = response;
        })
        .catchError((error) {
          logger.e("No cat breeds found");
          throw Exception('Error fetching breeds: $error');
        });
  }


  /// Obtiene los detalles de una raza específica usando su `id`.
  ///
  /// El resultado se almacena en `breedDetailsValue`.
  Future<void> getBreedDetails(String id) {
    return _repository
        .getBreedById(id)
        .then((response) {
          breedDetailsValue.value = response;
        })
        .catchError((error) {
          logger.e("No breeds details found");
          throw Exception('Error fetching breeds: $error');
        });
  }

  /// Realiza una búsqueda de razas que coincidan con el `query` dado.
  ///
  /// El resultado se almacena en `searchBreedsValue`.
  Future<void> searchBreeds(String query) {
    return _repository
        .searchBreeds(query)
        .then((response) {
          searchBreedsValue.value = response;
        })
        .catchError((error) {
          logger.e("No search breeds found");
          throw Exception('Error search breeds: $error');
        });
  }


  /// Obtiene una lista de imágenes para una raza usando su `breedId`.
  ///
  /// El resultado se almacena en `imagesForBreedValue`.
  Future<void> getImagesForBreed(String breedId) {
    return _repository
        .getImagesByBreed(breedId)
        .then((response) {
          imagesForBreedValue.value = response;
        })
        .catchError((error) {
          logger.e("No image breeds found");
          throw Exception('Error image breeds: $error');
        });
  }
}
