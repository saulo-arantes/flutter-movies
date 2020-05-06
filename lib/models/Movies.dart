import 'package:json_annotation/json_annotation.dart';
import 'package:movies/models/Movie.dart';

part 'Movies.g.dart';

@JsonSerializable(explicitToJson: true)
class Movies {
  const Movies({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults
  });

  final int page;

  final List<Movie> results;

  @JsonKey(name: 'total_pages')
  final int totalPages;

  @JsonKey(name: 'total_results')
  final int totalResults;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesToJson(this);
}
