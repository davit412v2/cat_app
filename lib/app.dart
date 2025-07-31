import 'package:cat_breed_app/core/app_setup.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catpedia',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
}
