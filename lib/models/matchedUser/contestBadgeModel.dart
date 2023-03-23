import 'package:json_annotation/json_annotation.dart';

part 'contestBadgeModel.g.dart';

@JsonSerializable()
class ContestBadgeModel {
  String? name;
  String? expired;
  String? hoverText;
  String? icon;

  ContestBadgeModel({this.name, this.expired, this.hoverText, this.icon});
  factory ContestBadgeModel.fromJson(Map<String, dynamic> json) => _$ContestBadgeModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContestBadgeModelToJson(this);
}
