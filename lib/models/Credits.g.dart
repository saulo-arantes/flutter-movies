// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credits _$CreditsFromJson(Map<String, dynamic> json) {
  return Credits(
    id: json['id'] as int,
    cast: (json['cast'] as List)
        ?.map(
            (e) => e == null ? null : Cast.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    crew: (json['crew'] as List)
        ?.map(
            (e) => e == null ? null : Crew.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CreditsToJson(Credits instance) => <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast?.map((e) => e?.toJson())?.toList(),
      'crew': instance.crew?.map((e) => e?.toJson())?.toList(),
    };
