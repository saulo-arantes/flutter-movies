// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductionCompany.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) {
  return ProductionCompany(
    id: json['id'] as int,
    name: json['name'] as String,
    logoPath: json['logo_path'] as String,
  );
}

Map<String, dynamic> _$ProductionCompanyToJson(ProductionCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_path': instance.logoPath,
    };
