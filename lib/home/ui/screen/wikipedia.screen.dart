import 'package:cat_breed_app/home/view_model/home.view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:webview_flutter/webview_flutter.dart';


/// En WikipediaScreen se muestra la navegacion de la 
/// url de la raza del gato previamente selecionada.
class WikipediaScreen extends StackedView<HomeViewModel> {

  const WikipediaScreen({super.key});
  
  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
     final controller = WebViewController()
      ..loadRequest(Uri.parse(viewModel.selectedBreed?.wikipediaUrl ?? ''))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wikipedia'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
  
  @override
  HomeViewModel viewModelBuilder(BuildContext context) =>HomeViewModel();
 
}
