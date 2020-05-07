import 'package:json_annotation/json_annotation.dart';
import 'package:movies/models/Cast.dart';
import 'package:movies/models/Crew.dart';

part 'Credits.g.dart';

@JsonSerializable(explicitToJson: true)
class Credits {
  const Credits({
    this.id,
    this.cast,
    this.crew
  });

  final int id;

  final List<Cast> cast;

  final List<Crew> crew;

  factory Credits.fromJson(Map<String, dynamic> json) => _$CreditsFromJson(json);

  Map<String, dynamic> toJson() => _$CreditsToJson(this);
}
