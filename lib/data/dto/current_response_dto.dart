import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/data/dto/base_dto.dart';
import 'package:weather_clean_architecture/domain/entities/current_response_entity.dart';

part 'current_response_dto.g.dart';

@JsonSerializable()
class CurrentResponseDTO extends BaseDTO<CurrentResponseEntity> {
  final String? time;
  final int? interval;
  final double? precipitation;
  @JsonKey(name: 'temperature_2m')
  final double? temperature2m;
  @JsonKey(name: 'weather_code')
  final int? weatherCode;
  @JsonKey(name: 'wind_speed_10m')
  final double? windSpeed10m;
  @JsonKey(name: 'relative_humidity_2m')
  final int? relativeHumidity2m;
  @JsonKey(name: 'apparent_temperature')
  final double? apparentTemperature;
  @JsonKey(name: 'rain')
  final double? rain;
  @JsonKey(name: 'cloud_cover')
  final int? cloudCover;

  const CurrentResponseDTO(
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
  CurrentResponseEntity toEntity() {
    return CurrentResponseEntity(
      time: time,
      interval: interval,
      precipitation: precipitation,
      temperature2m: temperature2m,
      weatherCode: WeatherCodeEnumExtension.getByWeatherCode(weatherCode ?? 0),
      windSpeed10m: windSpeed10m,
      relativeHumidity2m: relativeHumidity2m,
      apparentTemperature: apparentTemperature,
      rain: rain,
      cloudCover: cloudCover,
    );
  }

  factory CurrentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrentResponseDTOFromJson(json);

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
