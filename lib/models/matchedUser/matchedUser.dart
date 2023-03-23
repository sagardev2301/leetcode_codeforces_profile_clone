import 'contestBadgeModel.dart';
import 'profileModel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'matchedUser.g.dart';

@JsonSerializable()
class MatchedUser {
  String username;
  String? githubUrl;
  String? twitterUrl;
  String? linkedinUrl;
  ContestBadgeModel? contestBadge;
  ProfileModel? profile;

  MatchedUser(
      {required this.username,
      this.githubUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.contestBadge,
      this.profile
      });

  factory MatchedUser.fromJson(Map<String, dynamic> json) =>
      _$MatchedUserFromJson(json);
  Map<String, dynamic> toJson() => _$MatchedUserToJson(this);
}
