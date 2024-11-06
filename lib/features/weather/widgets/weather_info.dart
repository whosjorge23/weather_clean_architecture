import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weather_clean_architecture/core/shared/context_extension.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo(
      {super.key,
      required this.icon,
      required this.weatherInfo,
      required this.label});

  final IconData icon;
  final String weatherInfo;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color(0xff42c6ff),
        ),
        const Gap(8),
        Text(
          weatherInfo,
          style: context.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: context.textTheme.labelSmall?.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
