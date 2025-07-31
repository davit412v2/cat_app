import 'package:cat_breed_app/core/app_setup.router.dart';
import 'package:cat_breed_app/core/setup_locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel  extends ReactiveViewModel{
    final _navigationService = locator<NavigationService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [];

  SplashViewModel(){
    init();
  }
  
  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 5), (){
          _navigationService.replaceWithMenuFooterScreen();
    });
  }
}