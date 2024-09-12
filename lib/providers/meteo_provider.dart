import 'dart:convert';

import 'package:app_meteo/models/city_meteo.dart';
import 'package:app_meteo/models/city_previsions.dart';
import 'package:app_meteo/utils/DateFormatterUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class MeteoProvider with ChangeNotifier {
  CityMeteo? _cityMeteo;
  CityMeteo? get cityMeteo => _cityMeteo;
  get date => DateFormatterUtil.formatDate(DateTime.now());
  get time => DateFormat("HH:mm").format(DateTime.now());

  List<CityPrevisions> _previsions = [];
  List<CityPrevisions> get previsions => _previsions;

  // Constructeur
  MeteoProvider() {
    _fetchMeteo("Paris");
    _previsionMeteo("Paris");
  }

  // Récupération des variables d'environnement
  String? apiKey = dotenv.env['API_KEY']; // Charge la clé API
  String? apiBaseUrl = dotenv.env['API_BASE_URL']; // Charge l'URL de base
  String? apiBaseUrlPrevision = dotenv.env[
      'API_BASE_URL_PREVISION']; // Charge l'URL de base pour les prévisions

  // Methode pour récuperer les données de l'API
  void _fetchMeteo(String newCity) async {
    if (apiBaseUrl != null && apiKey != null) {
      // Construit l'URL de l'API
      String apiURL = "$apiBaseUrl&q=$newCity&key=$apiKey&days=5";

      // Exécute la requête
      var response = await http.get(Uri.parse(apiURL));

      // Traitement de la requête
      if (response.statusCode == 200) {
        var jsonResponse = json.decode(utf8.decode(response.bodyBytes));
        _cityMeteo = CityMeteo.fromJson(jsonResponse);
        // Notifie les widgets
        notifyListeners();
      }
    }
  }

  // Methode pour changer de ville
  void changeCity(String newCity) async {
    _fetchMeteo(newCity);
    _previsionMeteo(newCity);
  }

  void _previsionMeteo(String newCity) async {
    if (apiBaseUrlPrevision != null && apiKey != null) {
      // Construit l'URL de l'API
      String apiURL = "$apiBaseUrlPrevision&q=$newCity&key=$apiKey&days=6";

      // Exécute la requête
      var response = await http.get(Uri.parse(apiURL));

      // Traitement de la requête
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
        final forecast = jsonResponse['forecast']?['forecastday'];
        // ignorer la premiere prevision
        _previsions = List<CityPrevisions>.from(
            forecast.map((prevision) => CityPrevisions.fromJson(prevision)));
        // retirer le premier elements de la liste
        _previsions.removeAt(0);
        // Notifie les widgets
        notifyListeners();
      }
    }
  }
}
