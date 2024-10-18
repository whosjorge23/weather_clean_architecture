import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';
import 'package:weather_clean_architecture/domain/entities/base_entity.dart';

class CurrentResponseEntity extends BaseEntity {
  final String? time;
  final int? interval;
  final double? precipitation;
  final double? temperature2m;
  final int? weatherCode;
  final double? windSpeed10m;

  const CurrentResponseEntity({
    this.time,
    this.interval,
    this.precipitation,
    this.temperature2m,
    this.weatherCode,
    this.windSpeed10m,
  });

  @override
  CurrentResponseDTO toDTO() {
    return CurrentResponseDTO(
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
