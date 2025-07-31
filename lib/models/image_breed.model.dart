import 'package:cat_breed_app/models/breed.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_breed.model.g.dart';

@JsonSerializable()
class ImageBreed {
  final List<Breed>? breeds;
  final String? id;
  final String? url;

  ImageBreed({this.breeds, this.id, this.url});

  factory ImageBreed.fromJson(Map<String, dynamic> json) =>
      _$ImageBreedFromJson(json);

  Map<String, dynamic> toJson() => _$ImageBreedToJson(this);
}
