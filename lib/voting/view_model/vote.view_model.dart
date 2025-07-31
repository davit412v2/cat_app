import 'package:carousel_slider/carousel_controller.dart';
import 'package:cat_breed_app/api/service/cat.service.dart';
import 'package:cat_breed_app/core/setup_locator.dart';
import 'package:cat_breed_app/models/breed.model.dart';
import 'package:stacked/stacked.dart';

class VoteViewModel extends ReactiveViewModel {
  final _catService = locator<CatService>();

  int currentIndex = 0;

  CarouselSliderController controller = CarouselSliderController();

  @override
  List<ListenableServiceMixin> get listenableServices => [_catService];

  List<Breed> get images => _catService.allBreedsValue.value;

  int get maxIndex => images.length - 1;

  void vote(id, bool bool) {}
}
