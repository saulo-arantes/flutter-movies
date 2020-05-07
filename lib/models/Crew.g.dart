// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return Crew(
    id: json['id'] as int,
    creditId: json['credit_id'] as String,
    department: json['department'] as String,
    gender: json['gender'] as int,
    job: json['job'] as String,
    name: json['name'] as String,
    profilePath: json['profile_path'] as String,
  );
}

Map<String, dynamic> _$CrewToJson(Crew instance) => <String, dynamic>{
      'id': instance.id,
      'credit_id': instance.creditId,
      'department': instance.department,
      'gender': instance.gender,
      'job': instance.job,
      'name': instance.name,
      'profile_path': instance.profilePath,
    };
