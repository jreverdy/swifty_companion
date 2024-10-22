import 'package:json_annotation/json_annotation.dart';
import 'package:swifty_companion/models/image_versions_model.dart';

part 'image_model.g.dart';

@JsonSerializable()
class ImageModel {
  final String link;
  final ImageVersionsModel versions;
  ImageModel({
    required this.link,
    required this.versions,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}