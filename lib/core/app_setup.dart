import 'package:cat_breed_app/home/ui/screen/home.screen.dart';
import 'package:cat_breed_app/home/ui/screen/wikipedia.screen.dart';
import 'package:cat_breed_app/menu_footer/ui/screen/menu_footer.screen.dart';
import 'package:cat_breed_app/splash/ui/screen/splash.screen.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: MenuFooterScreen),
     MaterialRoute(page: WikipediaScreen),
  ],

)
class AppSetup {}
