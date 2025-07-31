// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_breed.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageBreed _$ImageBreedFromJson(Map<String, dynamic> json) => ImageBreed(
      breeds: (json['breeds'] as List<dynamic>?)
          ?.map((e) => Breed.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ImageBreedToJson(ImageBreed instance) =>
    <String, dynamic>{
      'breeds': instance.breeds,
      'id': instance.id,
      'url': instance.url,
    };
