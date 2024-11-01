import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:weather_clean_architecture/core/shared/context_extension.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';
import 'package:weather_clean_architecture/features/weather/widgets/weather_code_text.dart';
import 'package:weather_clean_architecture/features/weather/widgets/weather_info.dart';

class WeatherPageContent extends StatelessWidget {
  const WeatherPageContent(
    this.weatherEntity, {
    super.key,
  });

  final WeatherResponseEntity weatherEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(weatherEntity.timezone ?? ''),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                DateFormat('EEEE, d MMMM').format(DateTime.now()),
                style: const TextStyle(
                  color: Color(0xff42c6ff),
                ),
              ),
            ),
            const Gap(16),
            WeatherCodeText(
                weatherCodeEnum: weatherEntity.current?.weatherCode),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${weatherEntity.current?.apparentTemperature?.toInt()}',
                    style: const TextStyle(fontSize: 150),
                  ),
                  Text(
                    '${weatherEntity.currentUnits?.apparentTemperature}',
                    style: const TextStyle(fontWeight: FontWeight.w500),
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
                      label: context.l10n.wind,
                    ),
                    WeatherInfo(
                      icon: Icons.water_drop,
                      weatherInfo:
                          '${weatherEntity.current?.relativeHumidity2m}${weatherEntity.currentUnits?.relativeHumidity2m}',
                      label: context.l10n.humidity,
                    ),
                    WeatherInfo(
                      icon: Icons.cloud,
                      weatherInfo:
                          '${weatherEntity.current?.cloudCover}${weatherEntity.currentUnits?.cloudCover}',
                      label: context.l10n.clouds,
                    ),
                    WeatherInfo(
                      icon: Icons.water_drop_outlined,
                      weatherInfo:
                          '${weatherEntity.current?.rain}${weatherEntity.currentUnits?.rain}',
                      label: context.l10n.rain,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
