import 'package:flutter/cupertino.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';

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
          Text(
            'Weather Code: ${weatherEntity.current?.weatherCode}',
          ),
        ],
      ),
    );
  }
}
