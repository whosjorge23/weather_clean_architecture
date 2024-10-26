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
    );

Map<String, dynamic> _$WeatherResponseDTOToJson(WeatherResponseDTO instance) =>
    <String, dynamic>{
      'current': instance.current,
      'current_units': instance.currentUnits,
      'elevation': instance.elevation,
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
    };
