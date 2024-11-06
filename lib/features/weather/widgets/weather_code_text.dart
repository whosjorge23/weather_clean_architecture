import 'package:flutter/material.dart';
import 'package:weather_clean_architecture/core/shared/context_extension.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';

class WeatherCodeText extends StatelessWidget {
  const WeatherCodeText({super.key, required this.weatherCodeEnum});

  final WeatherCodeEnum? weatherCodeEnum;

  @override
  Widget build(BuildContext context) {
    return switch (weatherCodeEnum) {
      WeatherCodeEnum.clearsky => Text(
          context.l10n.clearsky,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.mainlyclear => Text(
          context.l10n.mainlyclear,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.partlycloudy => Text(
          context.l10n.partlycloudy,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.overcast => Text(
          context.l10n.overcast,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.fog => Text(
          context.l10n.fog,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.rimeFog => Text(
          context.l10n.rimeFog,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.drizzleLight => Text(
          context.l10n.drizzleLight,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.drizzleModerate => Text(
          context.l10n.drizzleModerate,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.drizzleDense => Text(
          context.l10n.drizzleDense,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.freezingDrizzleLight => Text(
          context.l10n.freezingDrizzleLight,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.freezingDrizzleDense => Text(
          context.l10n.freezingDrizzleDense,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.rainSlight => Text(
          context.l10n.rainSlight,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.rainModerate => Text(
          context.l10n.rainModerate,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.rainHeavy => Text(
          context.l10n.rainHeavy,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.freezingRainLight => Text(
          context.l10n.freezingRainLight,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.freezingRainHeavy => Text(
          context.l10n.freezingRainHeavy,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.snowFallSlight => Text(
          context.l10n.snowFallSlight,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.snowFallModerate => Text(
          context.l10n.snowFallModerate,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.snowFallHeavy => Text(
          context.l10n.snowFallHeavy,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.snowGrains => Text(
          context.l10n.snowGrains,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.rainShowersSlight => Text(
          context.l10n.rainShowersSlight,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.rainShowersModerate => Text(
          context.l10n.rainShowersModerate,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.rainShowersViolent => Text(
          context.l10n.rainShowersViolent,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.snowShowersSlight => Text(
          context.l10n.snowShowersSlight,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.snowShowersHeavy => Text(
          context.l10n.snowShowersHeavy,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.thunderstorm => Text(
          context.l10n.thunderstorm,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.thunderstormSlightHail => Text(
          context.l10n.thunderstormSlightHail,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      WeatherCodeEnum.thunderstormHeavyHail => Text(
          context.l10n.thunderstormHeavyHail,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
      _ => Text(
          context.l10n.clearsky,
          style: context.textTheme.titleSmall?.copyWith(),
        ),
    };
  }
}
