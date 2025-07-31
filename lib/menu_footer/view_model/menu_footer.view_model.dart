import 'package:stacked/stacked.dart';

class MenuFooterViewModel extends ReactiveViewModel {
    // final _catService = locator<CatService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [];

  int  currentIndex = 0;

  MenuFooterViewModel() {
    init();
  }

  void init() {
  }

  void setIndex(int value) {
    if(currentIndex == 0) {
      currentIndex =1;
    }else{
      currentIndex =0;
    }
    rebuildUi();
  }
  

}
