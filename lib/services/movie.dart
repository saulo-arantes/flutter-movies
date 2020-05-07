import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies/config/env.dart';
import 'package:movies/models/Credits.dart';
import 'package:movies/models/Movie.dart';
import 'package:movies/models/Error.dart';
import 'package:movies/models/Movies.dart';

class MovieService {
  static getMovie(int id) async {
    try {
      final String url = '${Env.apiBaseUrl}/movie/$id?api_key=${Env.theMovieDbApiKey}&language=pt-BR';
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Movie movie = Movie.fromJson(json.decode(response.body));

        return movie;
      }

      final Error error = Error.fromJson(json.decode(response.body));

      throw(error);
    } catch (e) {
      if (e is Error) {
        return Error;
      }

      print(e);
    }
  }

  static getPopular() async {
    try {
      final String url = '${Env.apiBaseUrl}/movie/popular?api_key=${Env.theMovieDbApiKey}&language=pt-BR';
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Movies movies = Movies.fromJson(json.decode(response.body));

        return movies;
      }

      final Error error = Error.fromJson(json.decode(response.body));

      throw(error);
    } catch (e) {
      if (e is Error) {
        return Error;
      }

      print(e);
    }
  }

  static getSimilar(int id) async {
    try {
      final String url = '${Env.apiBaseUrl}/movie/$id/similar?api_key=${Env.theMovieDbApiKey}&language=pt-BR';
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Movies movies = Movies.fromJson(json.decode(response.body));

        return movies;
      }

      final Error error = Error.fromJson(json.decode(response.body));

      throw(error);
    } catch (e) {
      if (e is Error) {
        return Error;
      }

      print(e);
    }
  }

  static getCredits(int id) async {
    try {
      final String url = '${Env.apiBaseUrl}/movie/$id/credits?api_key=${Env.theMovieDbApiKey}&language=pt-BR';
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Credits credits = Credits.fromJson(json.decode(response.body));

        return credits;
      }

      final Error error = Error.fromJson(json.decode(response.body));

      throw(error);
    } catch (e) {
      if (e is Error) {
        return Error;
      }

      print(e);
    }
  }
}
