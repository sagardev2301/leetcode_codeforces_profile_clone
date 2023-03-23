import 'package:json_annotation/json_annotation.dart';

part 'problemType.g.dart';

@JsonSerializable()
class ProblemType {
  String? difficulty;
  int? count;

  ProblemType({
    this.difficulty,
    this.count,
  });

  factory ProblemType.fromJson(Map<String, dynamic> json) =>
      _$ProblemTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ProblemTypeToJson(this);
}
