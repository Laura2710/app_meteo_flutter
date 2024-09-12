import 'package:app_meteo/utils/DateFormatterUtil.dart';
import 'package:flutter/material.dart';

class CityPrevisions {
  String? date;
  double? tempMax;
  double? tempMin;
  int? chanceOfRain;

  CityPrevisions(this.date, this.tempMax, this.tempMin, this.chanceOfRain);

  static CityPrevisions fromJson(dynamic json) {
    // Parser la date du JSON
    DateTime parsedDate = DateTime.parse(json['date']);
    // Formater la date au format dd/MM/yyyy

    // Retourner une nouvelle instance de CityPrevisions avec la date formatée
    return CityPrevisions(
      DateFormatterUtil.formatDate(parsedDate),
      json['day']['maxtemp_c'],
      json['day']['mintemp_c'],
      json['day']['daily_chance_of_rain'],
    );
  }

  // Fonction qui retourne une icône en fonction de la condition météo
  IconData getWeatherIcon() {
    if (chanceOfRain != null) {
      if (chanceOfRain! > 70) {
        return Icons.water_drop; // Icône pour la pluie
      } else if (chanceOfRain! > 50) {
        return Icons.cloud; // Icône pour temps nuageux
      } else {
        return Icons.wb_sunny; // Icône pour temps clair
      }
    }
    return Icons.wb_cloudy; // Icône par défaut pour conditions inconnues
  }

  @override
  String toString() {
    return 'date: $date, tempMax: $tempMax, tempMin: $tempMin, chanceOfRain: $chanceOfRain';
  }
}
