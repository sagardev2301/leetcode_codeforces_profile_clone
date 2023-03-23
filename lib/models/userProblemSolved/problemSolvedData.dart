import 'package:graphdemo/models/userProblemSolved/totalProblem.dart';
import 'package:graphdemo/models/userProblemSolved/userProblemSolved.dart';
import 'package:json_annotation/json_annotation.dart';

part 'problemSolvedData.g.dart';

@JsonSerializable()
class ProblemSolvedData {
  List<TotalProblem>? allQuestionsCount;
  UserProblemSolved? matchedUser;

  ProblemSolvedData({this.allQuestionsCount, this.matchedUser});

  factory ProblemSolvedData.fromJson(Map<String, dynamic> json) =>
      _$ProblemSolvedDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProblemSolvedDataToJson(this);
}
