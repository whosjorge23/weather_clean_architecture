// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
