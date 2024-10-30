import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';
import 'package:weather_clean_architecture/domain/entities/base_entity.dart';
import 'package:weather_clean_architecture/domain/entities/current_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/current_units_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/daily_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/daily_units_response_entity.dart';

class WeatherResponseEntity extends BaseEntity {
  final CurrentResponseEntity? current;
  final CurrentUnitsResponseEntity? currentUnits;
  final DailyUnitsResponseEntity? dailyUnits;
  final DailyResponseEntity? daily;
  final double? elevation;
  final String? timezone;

  const WeatherResponseEntity({
    this.current,
    this.elevation,
    this.currentUnits,
    this.dailyUnits,
    this.daily,
    this.timezone,
  });

  @override
  WeatherResponseDTO toDTO() {
    return WeatherResponseDTO(
      current: current?.toDTO(),
      elevation: elevation,
      currentUnits: currentUnits?.toDTO(),
      dailyUnits: dailyUnits?.toDTO(),
      daily: daily?.toDTO(),
      timezone: timezone,
    );
  }

  @override
  List<Object?> get props =>
      [current, elevation, currentUnits, dailyUnits, daily, timezone];
}
