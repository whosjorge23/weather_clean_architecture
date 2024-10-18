import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';
import 'package:weather_clean_architecture/domain/entities/base_entity.dart';

class CurrentUnitsResponseEntity extends BaseEntity {
  final String? time;
  final String? interval;
  final String? precipitation;
  final String? temperature2m;
  final String? weatherCode;
  final String? windSpeed10m;

  const CurrentUnitsResponseEntity({
    this.time,
    this.interval,
    this.precipitation,
    this.temperature2m,
    this.weatherCode,
    this.windSpeed10m,
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
    );
  }

  @override
  List<Object?> get props =>
      [time, interval, precipitation, temperature2m, weatherCode, windSpeed10m];
}
