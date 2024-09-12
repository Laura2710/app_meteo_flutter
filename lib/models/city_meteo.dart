import 'package:flutter/material.dart';

class CityMeteo {
  String? name;
  double? temp;
  int? humidity;
  String? condition;

  CityMeteo(this.name, this.temp, this.humidity, this.condition);

  // Méthode de création d'un objet CityMeteo à partir d'un JSON
  static CityMeteo fromJson(Map<String, dynamic> json) {
    return CityMeteo(
      json['location']['name'], // Le nom de la ville
      json['current']['temp_c'], // La température en °C
      json['current']['humidity'], // Le taux d'humidité
      json['current']['condition']['text'],
    );
  }

  // Fonction qui retourne une icône en fonction de la condition météo
  IconData getWeatherIcon() {
    String conditionLower = condition?.toLowerCase() ?? '';

    if (conditionLower.contains('soleil')) {
      return Icons.wb_sunny; // Icône pour temps ensoleillé
    } else if (conditionLower.contains('clair')) {
      return Icons.wb_sunny; // Icône pour temps clair
    } else if (conditionLower.contains('nuage')) {
      return Icons.cloud; // Icône pour temps nuageux
    } else if (conditionLower.contains('pluie')) {
      return Icons.water_drop; // Icône pour la pluie
    } else if (conditionLower.contains('neige')) {
      return Icons.ac_unit; // Icône pour neige
    } else if (conditionLower.contains('orage')) {
      return Icons.flash_on; // Icône pour orage
    } else {
      return Icons.wb_cloudy; // Icône par défaut pour conditions inconnues
    }
  }
}
