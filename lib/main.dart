import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movies/models/Error.dart';
import 'package:movies/models/Movie.dart';
import 'package:movies/services/movie.dart';

Future main() async {
  await DotEnv().load('.env');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: MovieService.getMovie(618344),
        builder: (BuildContext _context, AsyncSnapshot _snapshot) {
          if (_snapshot.hasData) {
            final Movie movie = _snapshot.data;
            print(movie.title);
            print(movie.productionCompanies[0].name);

            return Center(
              child: Text(movie.title),
            );
          }

          if (_snapshot.hasError) {
            print(_snapshot.error);

            return Center();
          }

          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.transparent,
            ),
          );
        },
      ),
    );
  }
}
