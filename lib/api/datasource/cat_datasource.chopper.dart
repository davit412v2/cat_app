// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_datasource.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CatDatasource extends CatDatasource {
  _$CatDatasource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CatDatasource;

  @override
  Future<Response<List<Breed>>> getBreeds() {
    final Uri $url = Uri.parse('/breeds');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Breed>, Breed>($request);
  }

  @override
  Future<Response<Breed>> getBreedById(String id) {
    final Uri $url = Uri.parse('/breeds/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Breed, Breed>($request);
  }

  @override
  Future<Response<List<Breed>>> searchBreeds(String query) {
    final Uri $url = Uri.parse('/breeds/search');
    final Map<String, dynamic> $params = <String, dynamic>{'q': query};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Breed>, Breed>($request);
  }

  @override
  Future<Response<List<ImageBreed>>> getImagesByBreed(String breedId) {
    final Uri $url = Uri.parse('/images/search');
    final Map<String, dynamic> $params = <String, dynamic>{'breed_id': breedId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ImageBreed>, ImageBreed>($request);
  }
}
