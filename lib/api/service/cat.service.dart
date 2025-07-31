import 'package:cat_breed_app/api/repository/cat_repository.dart';
import 'package:cat_breed_app/core/base_service.dart';
import 'package:cat_breed_app/models/breed.model.dart';
import 'package:cat_breed_app/models/image_breed.model.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';

class CatService extends BaseService {
  var logger = Logger();

  final allBreedsValue = ReactiveValue<List<Breed>>([]);
  final breedDetailsValue = ReactiveValue<Breed?>(null);
  final searchBreedsValue = ReactiveValue<List<Breed>>([]);
  final imagesForBreedValue = ReactiveValue<List<ImageBreed>>([]);

  final CatRepository _repository;

  CatService(this._repository) {
    listenToReactiveValues([
      allBreedsValue,
      breedDetailsValue,
      searchBreedsValue,
      imagesForBreedValue,
    ]);
  }

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
