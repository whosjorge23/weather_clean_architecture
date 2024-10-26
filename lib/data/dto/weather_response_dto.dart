import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/data/dto/base_dto.dart';
import 'package:weather_clean_architecture/domain/entities/current_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/current_units_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';

part 'weather_response_dto.g.dart';

@JsonSerializable()
class WeatherResponseDTO extends BaseDTO<WeatherResponseEntity> {
  final CurrentResponseDTO? current;
  @JsonKey(name: 'current_units')
  final CurrentUnitsResponseDTO? currentUnits;
  final double? elevation;

  const WeatherResponseDTO({this.current, this.elevation, this.currentUnits});

  @override
  WeatherResponseEntity toEntity() {
    return WeatherResponseEntity(
      current: current?.toEntity(),
      elevation: elevation,
      currentUnits: currentUnits?.toEntity(),
    );
  }

  factory WeatherResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseDTOFromJson(json);

  @override
  List<Object?> get props => [current, elevation, currentUnits];
}

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
