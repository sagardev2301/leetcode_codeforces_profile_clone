import 'package:json_annotation/json_annotation.dart';

part 'profileModel.g.dart';

@JsonSerializable()
class ProfileModel {
  int? ranking;
  String? userAvatar;
  String? realName;
  String? aboutMe;
  String? school;
  // websites
  String? countryName;
  String? company;
  String? jobTitle;
  List<String>? skillTags;
  int? postViewCount;
  int? postViewCountDiff;
  int? reputation;
  int? reputationDiff;
  int? solutionCount;
  int? solutionCountDiff;
  int? categoryDiscussCount;
  int? categoryDiscussCountDiff;

  ProfileModel(
      {this.ranking,
      this.userAvatar,
      this.realName,
      this.aboutMe,
      this.school,
      this.countryName,
      this.company,
      this.jobTitle,
      this.skillTags,
      this.postViewCount,
      this.postViewCountDiff,
      this.reputation,
      this.reputationDiff,
      this.solutionCount,
      this.solutionCountDiff,
      this.categoryDiscussCount,
      this.categoryDiscussCountDiff});

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
