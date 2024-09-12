import 'package:app_meteo/providers/meteo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MeteoMainWidget extends StatelessWidget {
  const MeteoMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        _buildCityAndDateInfo(context),
        const SizedBox(height: 20),
        const CircleWidget(),
      ],
    );
  }

  Widget _buildCityAndDateInfo(BuildContext context) {
    return Consumer<MeteoProvider>(
      builder:
          (BuildContext context, MeteoProvider meteoProvider, Widget? child) {
        return Column(
          children: [
            _buildCityName(context, meteoProvider),
            _buildDateAndTime(context, meteoProvider),
          ],
        );
      },
    );
  }

  Widget _buildCityName(BuildContext context, MeteoProvider meteoProvider) {
    return Text(
      meteoProvider.cityMeteo?.name ?? "",
      style: TextStyle(
        fontSize: 40,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }

  Widget _buildDateAndTime(BuildContext context, MeteoProvider meteoProvider) {
    return Text(
      "Aujourd'hui | ${meteoProvider.time}",
      style: TextStyle(
        fontSize: 20,
        color: Theme.of(context).colorScheme.tertiary,
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _buildCircleContainer(context),
    );
  }

  Widget _buildCircleContainer(BuildContext context) {
    return Container(
      width: 300.0, // Diamètre du cercle
      height: 300.0, // Diamètre du cercle
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context)
            .colorScheme
            .inversePrimary, // Couleur de fond du cercle
      ),
      child: Center(child: _buildWeatherContent(context)),
    );
  }

  Widget _buildWeatherContent(BuildContext context) {
    return Consumer<MeteoProvider>(
      builder:
          (BuildContext context, MeteoProvider meteoProvider, Widget? child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildTemperatureText(meteoProvider),
            _buildWeatherIcon(context, meteoProvider),
            _buildConditionText(meteoProvider),
          ],
        );
      },
    );
  }

  Widget _buildWeatherIcon(BuildContext context, MeteoProvider meteoProvider) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Icon(
        meteoProvider.cityMeteo?.getWeatherIcon() ?? Icons.wb_cloudy,
        size: 80.0,
        color: Theme.of(context).colorScheme.tertiary,
      ),
    );
  }

  Widget _buildTemperatureText(MeteoProvider meteoProvider) {
    return Text(
      "${meteoProvider.cityMeteo?.temp}°C",
      style: const TextStyle(fontSize: 60, height: 1),
    );
  }

  Widget _buildConditionText(MeteoProvider meteoProvider) {
    return Text(
      "${meteoProvider.cityMeteo?.condition}",
      style: const TextStyle(fontSize: 16),
    );
  }
}
