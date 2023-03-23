import 'package:graphdemo/models/userProblemSolved/problemType.dart';
import 'package:json_annotation/json_annotation.dart';

part 'submitStats.g.dart';

@JsonSerializable()
class SubmitStat {

  List<ProblemType>? acSubmissionNum;

  SubmitStat({this.acSubmissionNum});
  factory SubmitStat.fromJson(Map<String, dynamic> json) =>
      _$SubmitStatFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitStatToJson(this);
}
