import 'package:flutter/cupertino.dart';
import 'package:weather_clean_architecture/core/shared/context_extension.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';

import '../../../data/dto/weather_response_dto.dart';

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
          Text(
            'Precipitation: ${weatherEntity.current?.precipitation}${weatherEntity.currentUnits?.precipitation}',
          ),
          Text(
            'Time: ${weatherEntity.current?.time}',
          ),
          Text(
            'Temperature at 2m: ${weatherEntity.current?.temperature2m}${weatherEntity.currentUnits?.temperature2m}',
          ),
          Text(
            'Wind Speed at 10m: ${weatherEntity.current?.windSpeed10m}${weatherEntity.currentUnits?.windSpeed10m}',
          ),
          switch (weatherEntity.current?.weatherCode) {
            WeatherCodeEnum.clearsky => Text(context.l10n.clearsky),
            WeatherCodeEnum.mainlyclear => Text('Mainly clear'),
            WeatherCodeEnum.partlycloudy => Text('partly cloudy'),
            WeatherCodeEnum.overcast => Text('overcast'),
            WeatherCodeEnum.fog => Text('Fog'),
            WeatherCodeEnum.rimeFog => Text('depositing rime fog'),
            WeatherCodeEnum.drizzleLight => Text('Drizzle Light'),
            WeatherCodeEnum.drizzleModerate => Text('Drizzle Moderate'),
            WeatherCodeEnum.drizzleDense => Text('Drizzle Dense'),
            WeatherCodeEnum.freezingDrizzleLight =>
              Text('Freezing Drizzle Light'),
            WeatherCodeEnum.freezingDrizzleDense =>
              Text('Freezing Drizzle Dense'),
            WeatherCodeEnum.rainSlight => Text('Rain Slight'),
            WeatherCodeEnum.rainModerate => Text('Rain Moderate'),
            WeatherCodeEnum.rainHeavy => Text('Rain Heavy'),
            WeatherCodeEnum.freezingRainLight => Text('Freezing Rain Light'),
            WeatherCodeEnum.freezingRainHeavy => Text('Freezing Rain Heavy'),
            WeatherCodeEnum.snowFallSlight => Text('Snow Fall Slight'),
            WeatherCodeEnum.snowFallModerate => Text('Snow Fall Moderate'),
            WeatherCodeEnum.snowFallHeavy => Text('Snow Fall Heavy'),
            WeatherCodeEnum.snowGrains => Text('Snow Grains'),
            WeatherCodeEnum.rainShowersSlight => Text('Rain Showers Slight'),
            WeatherCodeEnum.rainShowersModerate =>
              Text('Rain Showers Moderate'),
            WeatherCodeEnum.rainShowersViolent => Text('Rain Showers Violent'),
            WeatherCodeEnum.snowShowersSlight => Text('Snow Showers Slight'),
            WeatherCodeEnum.snowShowersHeavy => Text('Snow Showers Heavy'),
            WeatherCodeEnum.thunderstorm => Text('Thunderstorm'),
            WeatherCodeEnum.thunderstormSlightHail =>
              Text('Thunderstorm Slight Hail'),
            WeatherCodeEnum.thunderstormHeavyHail =>
              Text('Thunderstorm Heavy Hail'),
            _ => Text('Clear Sky'),
          },
          // Text(
          //   'Weather Code: ${weatherEntity.current?.weatherCode}',
          // ),
        ],
      ),
    );
  }
}
