import 'package:json_annotation/json_annotation.dart';

part 'ProductionCompany.g.dart';

@JsonSerializable()
class ProductionCompany {
  const ProductionCompany({
    this.id,
    this.name,
    this.logoPath
  });

  final int id;

  final String name;

  @JsonKey(name: 'logo_path')
  final String logoPath;

  factory ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyToJson(this);
}
