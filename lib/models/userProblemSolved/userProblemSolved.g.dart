// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userProblemSolved.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProblemSolved _$UserProblemSolvedFromJson(Map<String, dynamic> json) =>
    UserProblemSolved(
      problemsSolvedBeatsStats: (json['problemsSolvedBeatsStats']
              as List<dynamic>)
          .map((e) => ProblemPercentage.fromJson(e as Map<String, dynamic>))
          .toList(),
      submitStatsGlobal: json['submitStatsGlobal'] == null
          ? null
          : SubmitStat.fromJson(
              json['submitStatsGlobal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserProblemSolvedToJson(UserProblemSolved instance) =>
    <String, dynamic>{
      'problemsSolvedBeatsStats': instance.problemsSolvedBeatsStats,
      'submitStatsGlobal': instance.submitStatsGlobal,
    };
