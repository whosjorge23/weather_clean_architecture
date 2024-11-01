import 'package:flutter/material.dart';
import 'package:weather_clean_architecture/core/shared/context_extension.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';

class WeatherCodeText extends StatelessWidget {
  const WeatherCodeText({super.key, required this.weatherCodeEnum});

  final WeatherCodeEnum? weatherCodeEnum;

  @override
  Widget build(BuildContext context) {
    return switch (weatherCodeEnum) {
      WeatherCodeEnum.clearsky => Text(context.l10n.clearsky),
      WeatherCodeEnum.mainlyclear => Text(context.l10n.mainlyclear),
      WeatherCodeEnum.partlycloudy => Text(context.l10n.partlycloudy),
      WeatherCodeEnum.overcast => Text(context.l10n.overcast),
      WeatherCodeEnum.fog => Text(context.l10n.fog),
      WeatherCodeEnum.rimeFog => Text(context.l10n.rimeFog),
      WeatherCodeEnum.drizzleLight => Text(context.l10n.drizzleLight),
      WeatherCodeEnum.drizzleModerate => Text(context.l10n.drizzleModerate),
      WeatherCodeEnum.drizzleDense => Text(context.l10n.drizzleDense),
      WeatherCodeEnum.freezingDrizzleLight =>
        Text(context.l10n.freezingDrizzleLight),
      WeatherCodeEnum.freezingDrizzleDense =>
        Text(context.l10n.freezingDrizzleDense),
      WeatherCodeEnum.rainSlight => Text(context.l10n.rainSlight),
      WeatherCodeEnum.rainModerate => Text(context.l10n.rainModerate),
      WeatherCodeEnum.rainHeavy => Text(context.l10n.rainHeavy),
      WeatherCodeEnum.freezingRainLight => Text(context.l10n.freezingRainLight),
      WeatherCodeEnum.freezingRainHeavy => Text(context.l10n.freezingRainHeavy),
      WeatherCodeEnum.snowFallSlight => Text(context.l10n.snowFallSlight),
      WeatherCodeEnum.snowFallModerate => Text(context.l10n.snowFallModerate),
      WeatherCodeEnum.snowFallHeavy => Text(context.l10n.snowFallHeavy),
      WeatherCodeEnum.snowGrains => Text(context.l10n.snowGrains),
      WeatherCodeEnum.rainShowersSlight => Text(context.l10n.rainShowersSlight),
      WeatherCodeEnum.rainShowersModerate =>
        Text(context.l10n.rainShowersModerate),
      WeatherCodeEnum.rainShowersViolent =>
        Text(context.l10n.rainShowersViolent),
      WeatherCodeEnum.snowShowersSlight => Text(context.l10n.snowShowersSlight),
      WeatherCodeEnum.snowShowersHeavy => Text(context.l10n.snowShowersHeavy),
      WeatherCodeEnum.thunderstorm => Text(context.l10n.thunderstorm),
      WeatherCodeEnum.thunderstormSlightHail =>
        Text(context.l10n.thunderstormSlightHail),
      WeatherCodeEnum.thunderstormHeavyHail =>
        Text(context.l10n.thunderstormHeavyHail),
      _ => Text(context.l10n.clearsky),
    };
  }
}
