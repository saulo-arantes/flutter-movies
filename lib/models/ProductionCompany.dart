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

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$ProductionCompanyFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ProductionCompanyToJson`.
  Map<String, dynamic> toJson() => _$ProductionCompanyToJson(this);
}
