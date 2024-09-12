# Application météo

Ce projet est une application météo simple développée avec Flutter, permettant d'afficher en temps réel les prévisions météorologiques via l'API WeatherAPI.  

Il s'agit d'un projet personnel visant à pratiquer :
- la création de widgets, 
- la récupération et la gestion des données à l'aide de Provider et de http, 
- Convertir des données JSON en objets Dart.
___

![alt text](<Capture d'écran 2024-09-12 120924.png>)

## Configuration
Pour utiliser l'application, il est nécessaire de configurer votre clé API et les URL de base pour les requêtes à WeatherAPI.

- Créer un dossier ``assets`` : À la racine de votre projet, créez un dossier nommé assets.
- Créer un ``fichier .env`` : Dans le dossier assets, créez un fichier nommé .env.
- Dans le fichier .env : Ajoutez les informations suivantes :


```bash
API_KEY=VOTRE_CLE_API
API_BASE_URL=http://api.weatherapi.com/v1/current.json?lang=fr
API_BASE_URL_PREVISION=http://api.weatherapi.com/v1/forecast.json?lang=fr
```
