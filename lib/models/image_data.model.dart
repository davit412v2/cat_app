import 'package:json_annotation/json_annotation.dart';

part 'image_data.model.g.dart';

@JsonSerializable()
class ImageData {
  final String? id;
  final int? width;
  final int? height;
  final String? url;

  ImageData({
    this.id,
    this.width,
    this.height,
    this.url,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}
