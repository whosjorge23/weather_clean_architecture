enum Environment {
  dev('https://api.open-meteo.com'),
  staging('https://api.open-meteo.com'),
  prod('https://api.open-meteo.com');

  const Environment(this.baseUrl);

  final String baseUrl;
}
