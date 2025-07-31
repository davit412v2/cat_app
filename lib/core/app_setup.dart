import 'package:cat_breed_app/home/ui/screen/home.screen.dart';
import 'package:cat_breed_app/home/ui/screen/wikipedia.screen.dart';
import 'package:cat_breed_app/menu_footer/ui/screen/menu_footer.screen.dart';
import 'package:cat_breed_app/splash/ui/screen/splash.screen.dart';
import 'package:stacked/stacked_annotations.dart';

/// @StackedApp es una anotación proporcionada por el paquete stacked que se utiliza 
/// junto con stacked_generator para generar automáticamente un sistema de rutas 
/// centralizado, limpio y fácil de mantener. Permite definir todas las rutas de la
/// aplicación en un solo lugar y generar navegación tipada y segura.
@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: MenuFooterScreen),
    MaterialRoute(page: WikipediaScreen),
  ],
)
class AppSetup {}
