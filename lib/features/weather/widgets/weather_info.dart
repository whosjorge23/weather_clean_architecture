import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff42c6ff),
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xff42c6ff),
          ),
        ),
      ],
    );
  }
}
