import 'package:app_meteo/providers/meteo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SearchBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  // Fonction pour effectuer la recherche d'une ville
  void _searchCity(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      String city = _controller.text;
      var meteoProvider = Provider.of<MeteoProvider>(context, listen: false);
      meteoProvider.changeCity(city);

      _controller.clear(); // Efface le texte après la recherche
    }
  }

  // Validation du champ de recherche
  String? _validateCity(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer un lieu';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(30.0), // Bordures arrondies
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: "Rechercher une ville",
                  labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                  border: InputBorder.none,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                ),
                validator: _validateCity,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiaryContainer,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.onTertiaryContainer,
                ),
                onPressed: () {
                  _searchCity(context);
                },
                iconSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
