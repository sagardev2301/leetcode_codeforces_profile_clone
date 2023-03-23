import 'package:graphdemo/models/userProblemSolved/problemPercentage.dart';
import 'package:graphdemo/models/userProblemSolved/submitStats.dart';
import 'package:json_annotation/json_annotation.dart';

part 'userProblemSolved.g.dart';

@JsonSerializable()
class UserProblemSolved {
  List<ProblemPercentage> problemsSolvedBeatsStats;
  SubmitStat? submitStatsGlobal;

  UserProblemSolved({required this.problemsSolvedBeatsStats, this.submitStatsGlobal});

  factory UserProblemSolved.fromJson(Map<String, dynamic> json) =>
      _$UserProblemSolvedFromJson(json);

  Map<String, dynamic> toJson() => _$UserProblemSolvedToJson(this);
}
