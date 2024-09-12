import 'package:app_meteo/models/city_previsions.dart';
import 'package:app_meteo/providers/meteo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PrevisionWidget extends StatelessWidget {
  const PrevisionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context),
          _buildPrevisionList(context),
        ],
      ),
    );
  }

  Widget _buildTitle(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Previsions sur 5 jours",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 24,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }

  Widget _buildPrevisionList(BuildContext context) {
    return Consumer<MeteoProvider>(
      builder:
          (BuildContext context, MeteoProvider meteoProvider, Widget? child) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: meteoProvider.previsions.length,
          itemBuilder: (context, index) {
            return _buildPrevisionCard(meteoProvider, index, context);
          },
        );
      },
    );
  }

  Widget _buildPrevisionCard(
      MeteoProvider meteoProvider, int index, BuildContext context) {
    final prevision = _getPrevision(meteoProvider, index);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: Container(
          height: 100,
          alignment: Alignment.centerLeft,
          child: ListTile(
            trailing: _buildWeatherIcon(prevision, context),
            title: _buildTitleCard(prevision),
            subtitle: _buildSubtitle(prevision, context),
          ),
        ),
      ),
    );
  }

  CityPrevisions _getPrevision(MeteoProvider meteoProvider, int index) {
    final prevision = meteoProvider.previsions[index];
    if (index == 0) {
      prevision.date =
          "Demain"; // Remplace la date par "Demain" pour le premier élément
    }
    return prevision;
  }

  Widget _buildWeatherIcon(CityPrevisions prevision, BuildContext context) {
    return Icon(
      prevision.getWeatherIcon(),
      color: Theme.of(context).colorScheme.tertiary,
    );
  }

  Widget _buildTitleCard(CityPrevisions prevision) {
    return Text(
      "${prevision.date} | Pluie: ${prevision.chanceOfRain} %",
      style: const TextStyle(fontSize: 20),
    );
  }

  Widget _buildSubtitle(CityPrevisions prevision, BuildContext context) {
    return Text(
      "min ${prevision.tempMin}°C / max ${prevision.tempMax} °C",
      style: TextStyle(
        fontSize: 16,
        color: Theme.of(context).colorScheme.tertiary,
      ),
    );
  }
}
