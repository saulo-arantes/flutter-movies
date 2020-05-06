import 'package:json_annotation/json_annotation.dart';

part 'Genre.g.dart';

@JsonSerializable()
class Genre {
  const Genre({
    this.id,
    this.name
  });

  final int id;

  final String name;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
