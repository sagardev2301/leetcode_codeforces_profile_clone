// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problemSolvedData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProblemSolvedData _$ProblemSolvedDataFromJson(Map<String, dynamic> json) =>
    ProblemSolvedData(
      allQuestionsCount: (json['allQuestionsCount'] as List<dynamic>?)
          ?.map((e) => TotalProblem.fromJson(e as Map<String, dynamic>))
          .toList(),
      matchedUser: json['matchedUser'] == null
          ? null
          : UserProblemSolved.fromJson(
              json['matchedUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProblemSolvedDataToJson(ProblemSolvedData instance) =>
    <String, dynamic>{
      'allQuestionsCount': instance.allQuestionsCount,
      'matchedUser': instance.matchedUser,
    };
