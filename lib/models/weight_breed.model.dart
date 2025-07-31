import 'package:json_annotation/json_annotation.dart';

part 'weight_breed.model.g.dart';

@JsonSerializable()
class Weight {
  final String? imperial;
  final String? metric;

  Weight({this.imperial, this.metric});

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
  Map<String, dynamic> toJson() => _$WeightToJson(this);
}
