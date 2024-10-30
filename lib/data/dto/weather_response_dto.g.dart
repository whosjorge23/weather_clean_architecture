// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponseDTO _$WeatherResponseDTOFromJson(Map<String, dynamic> json) =>
    WeatherResponseDTO(
      current: json['current'] == null
          ? null
          : CurrentResponseDTO.fromJson(
              json['current'] as Map<String, dynamic>),
      elevation: (json['elevation'] as num?)?.toDouble(),
      currentUnits: json['current_units'] == null
          ? null
          : CurrentUnitsResponseDTO.fromJson(
              json['current_units'] as Map<String, dynamic>),
      daily: json['daily'] == null
          ? null
          : DailyResponseDTO.fromJson(json['daily'] as Map<String, dynamic>),
      dailyUnits: json['daily_units'] == null
          ? null
          : DailyUnitsResponseDTO.fromJson(
              json['daily_units'] as Map<String, dynamic>),
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$WeatherResponseDTOToJson(WeatherResponseDTO instance) =>
    <String, dynamic>{
      'current': instance.current,
      'current_units': instance.currentUnits,
      'daily': instance.daily,
      'daily_units': instance.dailyUnits,
      'elevation': instance.elevation,
      'timezone': instance.timezone,
    };

CurrentUnitsResponseDTO _$CurrentUnitsResponseDTOFromJson(
        Map<String, dynamic> json) =>
    CurrentUnitsResponseDTO(
      json['temperature_2m'] as String?,
      json['weather_code'] as String?,
      json['wind_speed_10m'] as String?,
      time: json['time'] as String?,
      interval: json['interval'] as String?,
      precipitation: json['precipitation'] as String?,
      relativeHumidity2m: json['relative_humidity_2m'] as String?,
      apparentTemperature: json['apparent_temperature'] as String?,
      rain: json['rain'] as String?,
      cloudCover: json['cloud_cover'] as String?,
    );

Map<String, dynamic> _$CurrentUnitsResponseDTOToJson(
        CurrentUnitsResponseDTO instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'precipitation': instance.precipitation,
      'temperature_2m': instance.temperature2m,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'apparent_temperature': instance.apparentTemperature,
      'rain': instance.rain,
      'cloud_cover': instance.cloudCover,
    };

CurrentResponseDTO _$CurrentResponseDTOFromJson(Map<String, dynamic> json) =>
    CurrentResponseDTO(
      (json['temperature_2m'] as num?)?.toDouble(),
      (json['weather_code'] as num?)?.toInt(),
      (json['wind_speed_10m'] as num?)?.toDouble(),
      time: json['time'] as String?,
      interval: (json['interval'] as num?)?.toInt(),
      precipitation: (json['precipitation'] as num?)?.toDouble(),
      relativeHumidity2m: (json['relative_humidity_2m'] as num?)?.toInt(),
      apparentTemperature: (json['apparent_temperature'] as num?)?.toDouble(),
      rain: (json['rain'] as num?)?.toDouble(),
      cloudCover: (json['cloud_cover'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CurrentResponseDTOToJson(CurrentResponseDTO instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'precipitation': instance.precipitation,
      'temperature_2m': instance.temperature2m,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'apparent_temperature': instance.apparentTemperature,
      'rain': instance.rain,
      'cloud_cover': instance.cloudCover,
    };

DailyUnitsResponseDTO _$DailyUnitsResponseDTOFromJson(
        Map<String, dynamic> json) =>
    DailyUnitsResponseDTO(
      json['weather_code'] as String?,
      time: json['time'] as String?,
      apparentTemperatureMax: json['apparent_temperature_max'] as String?,
      apparentTemperatureMin: json['apparent_temperature_min'] as String?,
    );

Map<String, dynamic> _$DailyUnitsResponseDTOToJson(
        DailyUnitsResponseDTO instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'apparent_temperature_max': instance.apparentTemperatureMax,
      'apparent_temperature_min': instance.apparentTemperatureMin,
    };

DailyResponseDTO _$DailyResponseDTOFromJson(Map<String, dynamic> json) =>
    DailyResponseDTO(
      (json['weather_code'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      apparentTemperatureMax:
          (json['apparent_temperature_max'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList(),
      apparentTemperatureMin:
          (json['apparent_temperature_min'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList(),
    );

Map<String, dynamic> _$DailyResponseDTOToJson(DailyResponseDTO instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'apparent_temperature_max': instance.apparentTemperatureMax,
      'apparent_temperature_min': instance.apparentTemperatureMin,
    };
