import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/data/dto/daily_response_dto.dart';
import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';
import 'package:weather_clean_architecture/domain/entities/base_entity.dart';

class DailyResponseEntity extends BaseEntity {
  final List<String>? time;
  final List<WeatherCodeEnum>? weatherCode;
  final List<double>? apparentTemperatureMax;
  final List<double>? apparentTemperatureMin;

  const DailyResponseEntity({
    this.time,
    this.weatherCode,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
  });

  @override
  DailyResponseDTO toDTO() {
    return DailyResponseDTO(
      weatherCode?.map((code) => code.weatherCode).toList(),
      time: time,
      apparentTemperatureMax: apparentTemperatureMax,
      apparentTemperatureMin: apparentTemperatureMin,
    );
  }

  @override
  List<Object?> get props => [
        time,
        weatherCode,
        apparentTemperatureMax,
        apparentTemperatureMin,
      ];
}
