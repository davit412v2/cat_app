import 'package:cat_breed_app/models/breed.model.dart';
import 'package:cat_breed_app/models/image_breed.model.dart';
import 'package:chopper/chopper.dart';

part 'cat_datasource.chopper.dart';

@ChopperApi()
abstract class CatDatasource extends ChopperService {
  /// Endpoint: Obtener todas las razas
  @GET(path: '/breeds')
  Future<Response<List<Breed>>> getBreeds();

  /// Endpoint: Obtener detalles por id
  @GET(path: '/breeds/{id}')
  Future<Response<Breed>> getBreedById(@Path('id') String id);

  /// Endpoint: Buscar razas
  @GET(path: '/breeds/search')
  Future<Response<List<Breed>>> searchBreeds(@Query('q') String query);

  /// Endpoint: Imágenes por raza
  @GET(path: '/images/search')
  Future<Response<List<ImageBreed>>> getImagesByBreed(@Query('breed_id') String breedId);

  /// Configuración de API Pública
  static CatDatasource create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://api.thecatapi.com/v1'),
      services: [
        _$CatDatasource(),
      ],
      converter: const JsonConverter(),
      interceptors: [
        HeadersInterceptor({'x-api-key': 'live_JBT0Ah0Nt12iyl2IpjQVLDWjcLk0GQwf4zI9wBMfmfejKmcC31mOJp4yJz5TsOUP'}),
        HttpLoggingInterceptor(),
      ],
    );
    return _$CatDatasource(client);
  }
}
