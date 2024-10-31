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
