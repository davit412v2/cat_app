import 'package:cat_breed_app/api/datasource/cat_datasource.dart';
import 'package:cat_breed_app/api/repository/cat_repository.dart';
import 'package:cat_breed_app/api/service/cat.service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  
  locator.registerLazySingleton<CatDatasource>(() => CatDatasource.create());

  locator.registerLazySingleton<CatRepository>(
    () => CatRepository(locator<CatDatasource>()),
  );

  locator.registerLazySingleton<CatService>(
    () => CatService(locator<CatRepository>()),
  );
}
