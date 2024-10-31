import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/data/dto/base_dto.dart';
import 'package:weather_clean_architecture/domain/entities/current_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/daily_response_entity.dart';

part 'daily_response_dto.g.dart';

@JsonSerializable()
class DailyResponseDTO extends BaseDTO<DailyResponseEntity> {
  final List<String>? time;
  @JsonKey(name: 'weather_code')
  final List<int>? weatherCode;
  @JsonKey(name: 'apparent_temperature_max')
  final List<double>? apparentTemperatureMax;
  @JsonKey(name: 'apparent_temperature_min')
  final List<double>? apparentTemperatureMin;

  const DailyResponseDTO(
    this.weatherCode, {
    this.time,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
  });

  @override
  DailyResponseEntity toEntity() {
    return DailyResponseEntity(
      time: time,
      weatherCode: weatherCode
          ?.map((code) => WeatherCodeEnumExtension.getByWeatherCode(code))
          .toList(),
      apparentTemperatureMax: apparentTemperatureMax,
      apparentTemperatureMin: apparentTemperatureMin,
    );
  }

  factory DailyResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$DailyResponseDTOFromJson(json);

  @override
  List<Object?> get props => [
        time,
        weatherCode,
        apparentTemperatureMax,
        apparentTemperatureMin,
      ];
}
