import 'package:weather_clean_architecture/data/dto/current_units_response_dto.dart';
import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';
import 'package:weather_clean_architecture/domain/entities/base_entity.dart';

class CurrentUnitsResponseEntity extends BaseEntity {
  final String? time;
  final String? interval;
  final String? precipitation;
  final String? temperature2m;
  final String? weatherCode;
  final String? windSpeed10m;
  final String? relativeHumidity2m;
  final String? apparentTemperature;
  final String? rain;
  final String? cloudCover;

  const CurrentUnitsResponseEntity({
    this.time,
    this.interval,
    this.precipitation,
    this.temperature2m,
    this.weatherCode,
    this.windSpeed10m,
    this.relativeHumidity2m,
    this.apparentTemperature,
    this.rain,
    this.cloudCover,
  });

  @override
  CurrentUnitsResponseDTO toDTO() {
    return CurrentUnitsResponseDTO(
      temperature2m,
      weatherCode,
      windSpeed10m,
      time: time,
      interval: interval,
      precipitation: precipitation,
      relativeHumidity2m: relativeHumidity2m,
      apparentTemperature: apparentTemperature,
      rain: rain,
      cloudCover: cloudCover,
    );
  }

  @override
  List<Object?> get props => [
        time,
        interval,
        precipitation,
        temperature2m,
        weatherCode,
        windSpeed10m,
        relativeHumidity2m,
        apparentTemperature,
        rain,
        cloudCover,
      ];
}
