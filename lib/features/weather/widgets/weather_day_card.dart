import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weather_clean_architecture/core/shared/context_extension.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/features/weather/widgets/weather_code_text.dart';

class WeatherDayCard extends StatelessWidget {
  const WeatherDayCard({
    Key? key,
    required this.temperature,
    required this.weatherCode,
    required this.dateTime,
  }) : super(key: key);

  final String temperature;
  final WeatherCodeEnum weatherCode;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: AspectRatio(
        aspectRatio: 140 / 172,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(8),
                Text(temperature,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    )),
                const Spacer(),
                WeatherCodeText(weatherCodeEnum: weatherCode),
                const Spacer(),
                Text(
                  dateTime,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
