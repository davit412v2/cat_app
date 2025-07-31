import 'package:cat_breed_app/api/datasource/cat_datasource.dart';
import 'package:cat_breed_app/models/breed.model.dart';
import 'package:cat_breed_app/models/image_breed.model.dart';

class CatRepository {
  final CatDatasource _datasource;

  CatRepository(this._datasource);

  Future<List<Breed>> getBreeds() async {
    final response = await _datasource.getBreeds();
    if (response.isSuccessful && response.body != null) {
      final data = response.body as List<dynamic>;
      final breeds = data.map((json) => Breed.fromJson(json)).toList();
      return breeds;
    } else {
      throw Exception('Error fetching breeds: ${response.error}');
    }
  }

  Future<Breed> getBreedById(String id) async {
    final response = await _datasource.getBreedById(id);
    if (response.isSuccessful && response.body != null) {
      final data = response.body as dynamic;
      final breed = data.map((json) => Breed.fromJson(json));
      return breed;
    } else {
      throw Exception('Error fetching breed by ID: ${response.error}');
    }
  }

  Future<List<Breed>> searchBreeds(String query) async {
    final response = await _datasource.searchBreeds(query);
    if (response.isSuccessful && response.body != null) {
      final data = response.body as List<dynamic>;
      final breeds = data.map((json) => Breed.fromJson(json)).toList();
      return breeds;
    } else {
      throw Exception('Error searching breeds: ${response.error}');
    }
  }

  Future<List<ImageBreed>> getImagesByBreed(String breedId) async {
    final response = await _datasource.getImagesByBreed(breedId);
    if (response.isSuccessful && response.body != null) {
      final data = response.body as List<dynamic>;
      final breeds = data.map((json) => ImageBreed.fromJson(json)).toList();
      return breeds;
    } else {
      throw Exception('Error fetching images: ${response.error}');
    }
  }
}
