import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies/config/env.dart';
import 'package:movies/models/Movie.dart';
import 'package:movies/models/Error.dart';
import 'package:movies/models/Movies.dart';

class MovieService {
  static getMovie(id) async {
    try {
      final String url = '${Env.apiBaseUrl}/movie/$id?api_key=${Env.theMovieDbApiKey}';
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Movie movie = Movie.fromJson(json.decode(response.body));

        return movie;
      }

      final Error error = Error.fromJson(json.decode(response.body));

      throw(error);
    } catch (e) {
      return e;
    }
  }

  static getPopular() async {
    try {
      final String url = '${Env.apiBaseUrl}/movie/popular?api_key=${Env.theMovieDbApiKey}';
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Movies movies = Movies.fromJson(json.decode(response.body));

        return movies;
      }

      final Error error = Error.fromJson(json.decode(response.body));

      throw(error);
    } catch (e) {
      return e;
    }
  }
}
