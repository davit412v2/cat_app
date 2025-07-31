// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageData _$ImageDataFromJson(Map<String, dynamic> json) => ImageData(
      id: json['id'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ImageDataToJson(ImageData instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
    };
