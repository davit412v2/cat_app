import 'package:cat_breed_app/api/service/cat.service.dart';
import 'package:cat_breed_app/core/app_setup.router.dart';
import 'package:cat_breed_app/core/setup_locator.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final _catService = locator<CatService>();
  var logger = Logger();

  @override
  List<ListenableServiceMixin> get listenableServices => [_catService];

  SplashViewModel() {
    init();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 5), () {
      _getAllBreeds();
    });
  }

  void _getAllBreeds() {
    _catService
        .getAllBreeds()
        .then((_) {})
        .catchError((_) {
          logger.e("Error All breeds");
        })
        .whenComplete(() {
          _navigationService.replaceWithMenuFooterScreen();
        });
  }
}
