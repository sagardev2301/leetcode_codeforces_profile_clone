// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submitStats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitStat _$SubmitStatFromJson(Map<String, dynamic> json) => SubmitStat(
      acSubmissionNum: (json['acSubmissionNum'] as List<dynamic>?)
          ?.map((e) => ProblemType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubmitStatToJson(SubmitStat instance) =>
    <String, dynamic>{
      'acSubmissionNum': instance.acSubmissionNum,
    };
