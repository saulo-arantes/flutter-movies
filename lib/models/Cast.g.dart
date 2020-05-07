// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Cast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cast _$CastFromJson(Map<String, dynamic> json) {
  return Cast(
    id: json['id'] as int,
    character: json['character'] as String,
    creditId: json['credit_id'] as String,
    gender: json['gender'] as int,
    name: json['name'] as String,
    order: json['order'] as int,
    profilePath: json['profile_path'] as String,
  );
}

Map<String, dynamic> _$CastToJson(Cast instance) => <String, dynamic>{
      'id': instance.id,
      'character': instance.character,
      'credit_id': instance.creditId,
      'gender': instance.gender,
      'name': instance.name,
      'order': instance.order,
      'profile_path': instance.profilePath,
    };
