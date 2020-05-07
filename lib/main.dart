import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movies/models/Credits.dart';
import 'package:movies/models/Movies.dart';
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
        future: MovieService.getCredits(120),
        builder: (BuildContext _context, AsyncSnapshot _snapshot) {
          if (_snapshot.hasData) {
            final Credits credits = _snapshot.data;
            print(credits.crew.toString());

            return Center(
              child: Text('${credits.cast[0].name}'),
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
