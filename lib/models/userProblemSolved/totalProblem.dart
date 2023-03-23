import 'package:json_annotation/json_annotation.dart';

part 'totalProblem.g.dart';


@JsonSerializable()
class TotalProblem {
  String? difficulty;
  int? count;

  TotalProblem({
    this.difficulty,
    this.count,
  });


  factory TotalProblem.fromJson(Map<String, dynamic> json) =>
      _$TotalProblemFromJson(json);

  Map<String, dynamic> toJson() => _$TotalProblemToJson(this);
}
