// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contestBadgeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContestBadgeModel _$ContestBadgeModelFromJson(Map<String, dynamic> json) =>
    ContestBadgeModel(
      name: json['name'] as String?,
      expired: json['expired'] as String?,
      hoverText: json['hoverText'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$ContestBadgeModelToJson(ContestBadgeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'expired': instance.expired,
      'hoverText': instance.hoverText,
      'icon': instance.icon,
    };
