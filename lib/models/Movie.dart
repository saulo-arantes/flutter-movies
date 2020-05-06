import 'package:json_annotation/json_annotation.dart';
import 'package:movies/models/Genre.dart';
import 'package:movies/models/ProductionCompany.dart';

part 'Movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  const Movie({
    this.id,
    this.adult,
    this.budget,
    this.genres,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.releaseDate,
    this.status,
    this.title,
  });

  final int id;

  final bool adult;

  final int budget;

  final List<Genre> genres;

  @JsonKey(name: 'original_title')
  final String originalTitle;

  final String overview;

  final double popularity;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'production_companies')
  final List<ProductionCompany> productionCompanies;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  final String status;

  final String title;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$MovieFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$MovieToJson`.
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
