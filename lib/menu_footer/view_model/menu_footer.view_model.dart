import 'package:stacked/stacked.dart';


/// En MenuFooterViewModel se administra la lógica de 
/// MenuFooterScreen
class MenuFooterViewModel extends ReactiveViewModel {
  

  @override
  List<ListenableServiceMixin> get listenableServices => [];

  int currentIndex = 0;

  void setIndex(int value) {
    if (currentIndex == 0) {
      currentIndex = 1;
    } else {
      currentIndex = 0;
    }
    rebuildUi();
  }
}
