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
    this.genreIds,
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

  @JsonKey(required: false)
  final int budget;

  @JsonKey(name: 'genre_ids', required: false)
  final List<int> genreIds;

  @JsonKey(required: false)
  final List<Genre> genres;

  @JsonKey(name: 'original_title')
  final String originalTitle;

  final String overview;

  final double popularity;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'production_companies', required: false)
  final List<ProductionCompany> productionCompanies;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  @JsonKey(required: false)
  final String status;

  final String title;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
