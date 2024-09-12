import 'package:app_meteo/header.dart';
import 'package:app_meteo/meteo.dart';
import 'package:app_meteo/previsions.dart';
import 'package:app_meteo/providers/meteo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import 'util.dart';
import 'theme.dart';

void main() async {
  // Charger les variables d'environnement avant d'exécuter l'application
  await dotenv.load(fileName: "assets/.env");
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => MeteoProvider()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Abel", "Open Sans");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'App Meteo',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      darkTheme: theme.dark(), // Option pour le thème sombre
      home: const MyHomePage(title: 'App Meteo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text(title),
            ),
        body: const SingleChildScrollView(
          child: Column(children: [
            Header(),
            MeteoMainWidget(),
            SizedBox(height: 40),
            PrevisionWidget(),
          ]),
        ));
  }
}
