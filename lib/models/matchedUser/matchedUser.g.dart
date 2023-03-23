// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matchedUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchedUser _$MatchedUserFromJson(Map<String, dynamic> json) => MatchedUser(
      username: json['username'] as String,
      githubUrl: json['githubUrl'] as String?,
      twitterUrl: json['twitterUrl'] as String?,
      linkedinUrl: json['linkedinUrl'] as String?,
      contestBadge: json['contestBadge'] == null
          ? null
          : ContestBadgeModel.fromJson(
              json['contestBadge'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatchedUserToJson(MatchedUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'githubUrl': instance.githubUrl,
      'twitterUrl': instance.twitterUrl,
      'linkedinUrl': instance.linkedinUrl,
      'contestBadge': instance.contestBadge,
      'profile': instance.profile,
    };
