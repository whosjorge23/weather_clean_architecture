import 'package:weather_clean_architecture/data/dto/daily_units_response_dto.dart';
import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';
import 'package:weather_clean_architecture/domain/entities/base_entity.dart';

class DailyUnitsResponseEntity extends BaseEntity {
  final String? time;
  final String? weatherCode;
  final String? apparentTemperatureMax;
  final String? apparentTemperatureMin;

  const DailyUnitsResponseEntity({
    this.time,
    this.weatherCode,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
  });

  @override
  DailyUnitsResponseDTO toDTO() {
    return DailyUnitsResponseDTO(
      weatherCode,
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
