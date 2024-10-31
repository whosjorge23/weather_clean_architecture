import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/data/dto/base_dto.dart';
import 'package:weather_clean_architecture/domain/entities/current_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/current_units_response_entity.dart';

part 'current_units_response_dto.g.dart';

@JsonSerializable()
class CurrentUnitsResponseDTO extends BaseDTO<CurrentUnitsResponseEntity> {
  final String? time;
  final String? interval;
  final String? precipitation;
  @JsonKey(name: 'temperature_2m')
  final String? temperature2m;
  @JsonKey(name: 'weather_code')
  final String? weatherCode;
  @JsonKey(name: 'wind_speed_10m')
  final String? windSpeed10m;
  @JsonKey(name: 'relative_humidity_2m')
  final String? relativeHumidity2m;
  @JsonKey(name: 'apparent_temperature')
  final String? apparentTemperature;
  @JsonKey(name: 'rain')
  final String? rain;
  @JsonKey(name: 'cloud_cover')
  final String? cloudCover;

  const CurrentUnitsResponseDTO(
    this.temperature2m,
    this.weatherCode,
    this.windSpeed10m, {
    this.time,
    this.interval,
    this.precipitation,
    this.relativeHumidity2m,
    this.apparentTemperature,
    this.rain,
    this.cloudCover,
  });

  @override
  CurrentUnitsResponseEntity toEntity() {
    return CurrentUnitsResponseEntity(
      time: time,
      interval: interval,
      precipitation: precipitation,
      temperature2m: temperature2m,
      weatherCode: weatherCode,
      windSpeed10m: windSpeed10m,
      relativeHumidity2m: relativeHumidity2m,
      apparentTemperature: apparentTemperature,
      rain: rain,
      cloudCover: cloudCover,
    );
  }

  factory CurrentUnitsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsResponseDTOFromJson(json);

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
        cloudCover
      ];
}
