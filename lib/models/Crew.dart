import 'package:json_annotation/json_annotation.dart';

part 'Crew.g.dart';

@JsonSerializable()
class Crew {
  const Crew({
    this.id,
    this.creditId,
    this.department,
    this.gender,
    this.job,
    this.name,
    this.profilePath
  });

  final int id;

  @JsonKey(name: 'credit_id')
  final String creditId;

  final String department;

  final int gender;

  final String job;

  final String name;

  @JsonKey(name: 'profile_path')
  final String profilePath;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);

  Map<String, dynamic> toJson() => _$CrewToJson(this);
}
