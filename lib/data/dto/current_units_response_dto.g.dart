// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_units_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
