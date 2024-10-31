// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
