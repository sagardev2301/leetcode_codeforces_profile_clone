// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problemPercentage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProblemPercentage _$ProblemPercentageFromJson(Map<String, dynamic> json) =>
    ProblemPercentage(
      difficulty: json['difficulty'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProblemPercentageToJson(ProblemPercentage instance) =>
    <String, dynamic>{
      'difficulty': instance.difficulty,
      'percentage': instance.percentage,
    };
