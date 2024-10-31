import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/data/dto/base_dto.dart';
import 'package:weather_clean_architecture/domain/entities/current_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/current_units_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/daily_units_response_entity.dart';

part 'daily_units_response_dto.g.dart';

@JsonSerializable()
class DailyUnitsResponseDTO extends BaseDTO<DailyUnitsResponseEntity> {
  final String? time;
  @JsonKey(name: 'weather_code')
  final String? weatherCode;
  @JsonKey(name: 'apparent_temperature_max')
  final String? apparentTemperatureMax;
  @JsonKey(name: 'apparent_temperature_min')
  final String? apparentTemperatureMin;

  const DailyUnitsResponseDTO(
    this.weatherCode, {
    this.time,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
  });

  @override
  DailyUnitsResponseEntity toEntity() {
    return DailyUnitsResponseEntity(
      time: time,
      weatherCode: weatherCode,
      apparentTemperatureMax: apparentTemperatureMax,
      apparentTemperatureMin: apparentTemperatureMin,
    );
  }

  factory DailyUnitsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsResponseDTOFromJson(json);

  @override
  List<Object?> get props => [
        time,
        weatherCode,
        apparentTemperatureMax,
        apparentTemperatureMin,
      ];
}
