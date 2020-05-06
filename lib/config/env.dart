import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static final apiBaseUrl = DotEnv().env['API_BASE_URL'] ?? '';

  static final theMovieDbApiKey = DotEnv().env['THEMOVIEDB_API_KEY'] ?? '';

  static final theMovieDbToken = DotEnv().env['THEMOVIEDB_TOKEN'] ?? '';
}
