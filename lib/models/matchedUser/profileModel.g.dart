// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profileModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      ranking: json['ranking'] as int?,
      userAvatar: json['userAvatar'] as String?,
      realName: json['realName'] as String?,
      aboutMe: json['aboutMe'] as String?,
      school: json['school'] as String?,
      countryName: json['countryName'] as String?,
      company: json['company'] as String?,
      jobTitle: json['jobTitle'] as String?,
      skillTags: (json['skillTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      postViewCount: json['postViewCount'] as int?,
      postViewCountDiff: json['postViewCountDiff'] as int?,
      reputation: json['reputation'] as int?,
      reputationDiff: json['reputationDiff'] as int?,
      solutionCount: json['solutionCount'] as int?,
      solutionCountDiff: json['solutionCountDiff'] as int?,
      categoryDiscussCount: json['categoryDiscussCount'] as int?,
      categoryDiscussCountDiff: json['categoryDiscussCountDiff'] as int?,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'ranking': instance.ranking,
      'userAvatar': instance.userAvatar,
      'realName': instance.realName,
      'aboutMe': instance.aboutMe,
      'school': instance.school,
      'countryName': instance.countryName,
      'company': instance.company,
      'jobTitle': instance.jobTitle,
      'skillTags': instance.skillTags,
      'postViewCount': instance.postViewCount,
      'postViewCountDiff': instance.postViewCountDiff,
      'reputation': instance.reputation,
      'reputationDiff': instance.reputationDiff,
      'solutionCount': instance.solutionCount,
      'solutionCountDiff': instance.solutionCountDiff,
      'categoryDiscussCount': instance.categoryDiscussCount,
      'categoryDiscussCountDiff': instance.categoryDiscussCountDiff,
    };
