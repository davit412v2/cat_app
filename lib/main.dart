import 'package:cat_breed_app/app.dart';
import 'package:cat_breed_app/core/setup_locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const App());
}
