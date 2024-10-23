enum WeatherCodeEnum {
  clearsky(0),
  mainlyclear(1),
  partlycloudy(2),
  overcast(3),
  fog(45),
  rimeFog(48),
  drizzleLight(51),
  drizzleModerate(53),
  drizzleDense(55),
  freezingDrizzleLight(56),
  freezingDrizzleDense(57),
  rainSlight(61),
  rainModerate(63),
  rainHeavy(65),
  freezingRainLight(66),
  freezingRainHeavy(67),
  snowFallSlight(71),
  snowFallModerate(73),
  snowFallHeavy(75),
  snowGrains(77),
  rainShowersSlight(80),
  rainShowersModerate(81),
  rainShowersViolent(82),
  snowShowersSlight(85),
  snowShowersHeavy(86),
  thunderstorm(95),
  thunderstormSlightHail(96),
  thunderstormHeavyHail(99);

  final int weatherCode;

  const WeatherCodeEnum(this.weatherCode);
}

extension WeatherCodeEnumExtension on WeatherCodeEnum {
  static WeatherCodeEnum getByWeatherCode(int weatherCode) {
    return WeatherCodeEnum.values.firstWhere(
      (element) => element.weatherCode == weatherCode,
      orElse: () => WeatherCodeEnum.clearsky,
    );
  }
}
