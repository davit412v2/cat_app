import 'package:cat_breed_app/splash/view_model/splash.view_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class SplashScreen extends StackedView<SplashViewModel> {
  const SplashScreen({super.key});
  
  @override
  Widget builder(BuildContext context, SplashViewModel viewModel, Widget? child) => Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: Lottie.asset('assets/splash.json',
      width: 350,
      height: 350,
      repeat: true,
      ),
    ),
  );
  
  @override
  viewModelBuilder(BuildContext context) => SplashViewModel();

 
}