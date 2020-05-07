import 'package:json_annotation/json_annotation.dart';

part 'Cast.g.dart';

@JsonSerializable()
class Cast {
  const Cast({
    this.id,
    this.character,
    this.creditId,
    this.gender,
    this.name,
    this.order,
    this.profilePath
  });

  final int id;

  final String character;

  @JsonKey(name: 'credit_id')
  final String creditId;

  final int gender;

  final String name;

  final int order;

  @JsonKey(name: 'profile_path')
  final String profilePath;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);

  Map<String, dynamic> toJson() => _$CastToJson(this);
}
