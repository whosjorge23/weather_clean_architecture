// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_units_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
