import 'package:stacked/stacked.dart';

class HomeViewModel extends ReactiveViewModel {
  // final _catService = locator<CatService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [];

  HomeViewModel(){
    _getAllBreeds();
  }

  bool get loading => false;
  // _catService.loadingValue.value;

  // List<Breed> get allBreeds => _catService.allBreedsValue.value;

  // List<ImageBreed> get imagesForBreed => _catService.imagesForBreedValue.value;

  String? get selectedBreedId =>''; //_catService.selectedBreedIdValue.value;

  set selectedBreedId(String? value) {
    //_catService.selectedBreedIdValue.value = value;
  }

  void onTapItemBreed() {
  }

    void _getAllBreeds() {
    // _catService
    //     .getAllBreeds()
    //     .then((_) {
         
    //     })
    //     .catchError((_) {
    //       Dialog(child: Card(child: Text("No se encontro")));
    //     });
  }
}
