import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:weather_clean_architecture/core/shared/context_extension.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';
import 'package:weather_clean_architecture/features/weather/widgets/weather_info.dart';

class WeatherPageContent extends StatelessWidget {
  const WeatherPageContent(
    this.weatherEntity, {
    super.key,
  });

  final WeatherResponseEntity weatherEntity;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Text(
          //   'Precipitation: ${weatherEntity.current?.precipitation}${weatherEntity.currentUnits?.precipitation}',
          // ),
          // Text(
          //   'Time: ${weatherEntity.current?.time}',
          // ),
          // Text(
          //   'Temperature at 2m: ${weatherEntity.current?.temperature2m}${weatherEntity.currentUnits?.temperature2m}',
          // ),
          // Text(
          //   'Wind Speed at 10m: ${weatherEntity.current?.windSpeed10m}${weatherEntity.currentUnits?.windSpeed10m}',
          // ),
          // Text(
          //   'Relative Humidity at 2m: ${weatherEntity.current?.relativeHumidity2m}${weatherEntity.currentUnits?.relativeHumidity2m}',
          // ),
          // Text(
          //   'Apparent Temperature: ${weatherEntity.current?.apparentTemperature}${weatherEntity.currentUnits?.temperature2m}',
          // ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              "${DateFormat('EEEE, d MMMM').format(DateTime.now())}",
              style: const TextStyle(
                color: Color(0xff42c6ff),
              ),
            ),
          ),
          const Gap(16),
          switch (weatherEntity.current?.weatherCode) {
            WeatherCodeEnum.clearsky => Text(context.l10n.clearsky),
            WeatherCodeEnum.mainlyclear => Text(context.l10n.mainlyclear),
            WeatherCodeEnum.partlycloudy => Text(context.l10n.partlycloudy),
            WeatherCodeEnum.overcast => Text(context.l10n.overcast),
            WeatherCodeEnum.fog => Text(context.l10n.fog),
            WeatherCodeEnum.rimeFog => Text(context.l10n.rimeFog),
            WeatherCodeEnum.drizzleLight => Text(context.l10n.drizzleLight),
            WeatherCodeEnum.drizzleModerate =>
              Text(context.l10n.drizzleModerate),
            WeatherCodeEnum.drizzleDense => Text(context.l10n.drizzleDense),
            WeatherCodeEnum.freezingDrizzleLight =>
              Text(context.l10n.freezingDrizzleLight),
            WeatherCodeEnum.freezingDrizzleDense =>
              Text(context.l10n.freezingDrizzleDense),
            WeatherCodeEnum.rainSlight => Text(context.l10n.rainSlight),
            WeatherCodeEnum.rainModerate => Text(context.l10n.rainModerate),
            WeatherCodeEnum.rainHeavy => Text(context.l10n.rainHeavy),
            WeatherCodeEnum.freezingRainLight =>
              Text(context.l10n.freezingRainLight),
            WeatherCodeEnum.freezingRainHeavy =>
              Text(context.l10n.freezingRainHeavy),
            WeatherCodeEnum.snowFallSlight => Text(context.l10n.snowFallSlight),
            WeatherCodeEnum.snowFallModerate =>
              Text(context.l10n.snowFallModerate),
            WeatherCodeEnum.snowFallHeavy => Text(context.l10n.snowFallHeavy),
            WeatherCodeEnum.snowGrains => Text(context.l10n.snowGrains),
            WeatherCodeEnum.rainShowersSlight =>
              Text(context.l10n.rainShowersSlight),
            WeatherCodeEnum.rainShowersModerate =>
              Text(context.l10n.rainShowersModerate),
            WeatherCodeEnum.rainShowersViolent =>
              Text(context.l10n.rainShowersViolent),
            WeatherCodeEnum.snowShowersSlight =>
              Text(context.l10n.snowShowersSlight),
            WeatherCodeEnum.snowShowersHeavy =>
              Text(context.l10n.snowShowersHeavy),
            WeatherCodeEnum.thunderstorm => Text(context.l10n.thunderstorm),
            WeatherCodeEnum.thunderstormSlightHail =>
              Text(context.l10n.thunderstormSlightHail),
            WeatherCodeEnum.thunderstormHeavyHail =>
              Text(context.l10n.thunderstormHeavyHail),
            _ => Text(context.l10n.clearsky),
          },

          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${weatherEntity.current?.apparentTemperature?.toInt()}',
                  style: TextStyle(fontSize: 150),
                ),
                Text(
                  '${weatherEntity.currentUnits?.apparentTemperature}',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WeatherInfo(
                    icon: Icons.wind_power,
                    weatherInfo:
                        '${weatherEntity.current?.windSpeed10m}${weatherEntity.currentUnits?.windSpeed10m}',
                    label: '${context.l10n.wind}',
                  ),
                  WeatherInfo(
                    icon: Icons.water_drop,
                    weatherInfo:
                        '${weatherEntity.current?.relativeHumidity2m}${weatherEntity.currentUnits?.relativeHumidity2m}',
                    label: '${context.l10n.humidity}',
                  ),
                  WeatherInfo(
                    icon: Icons.cloud,
                    weatherInfo:
                        '${weatherEntity.current?.cloudCover}${weatherEntity.currentUnits?.cloudCover}',
                    label: '${context.l10n.clouds}',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
