import 'package:stacked/stacked.dart';

abstract class BaseService with ListenableServiceMixin {
  final loadingValue = ReactiveValue<bool>(false);
  BaseService() {
    listenToReactiveValues([loadingValue]);
  }
}