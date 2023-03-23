import 'package:json_annotation/json_annotation.dart';

part 'problemPercentage.g.dart';

@JsonSerializable()
class ProblemPercentage {
  String? difficulty;
  double? percentage;
  ProblemPercentage({
    this.difficulty,
    this.percentage,
  });

  factory ProblemPercentage.fromJson(Map<String, dynamic> json) =>
      _$ProblemPercentageFromJson(json);

  Map<String, dynamic> toJson() => _$ProblemPercentageToJson(this);
}
