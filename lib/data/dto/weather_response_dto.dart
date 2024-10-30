import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/data/dto/base_dto.dart';
import 'package:weather_clean_architecture/domain/entities/current_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/current_units_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/daily_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/daily_units_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';

part 'weather_response_dto.g.dart';

@JsonSerializable()
class WeatherResponseDTO extends BaseDTO<WeatherResponseEntity> {
  final CurrentResponseDTO? current;
  @JsonKey(name: 'current_units')
  final CurrentUnitsResponseDTO? currentUnits;
  final DailyResponseDTO? daily;
  @JsonKey(name: 'daily_units')
  final DailyUnitsResponseDTO? dailyUnits;
  final double? elevation;
  final String? timezone;

  const WeatherResponseDTO(
      {this.current,
      this.elevation,
      this.currentUnits,
      this.daily,
      this.dailyUnits,
      this.timezone});

  @override
  WeatherResponseEntity toEntity() {
    return WeatherResponseEntity(
      current: current?.toEntity(),
      elevation: elevation,
      currentUnits: currentUnits?.toEntity(),
      timezone: timezone,
      daily: daily?.toEntity(),
      dailyUnits: dailyUnits?.toEntity(),
    );
  }

  factory WeatherResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseDTOFromJson(json);

  @override
  List<Object?> get props => [
        current,
        elevation,
        currentUnits,
        daily,
        dailyUnits,
        timezone,
      ];
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
