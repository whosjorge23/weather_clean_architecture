import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_clean_architecture/core/shared/enums/weather_code_enum.dart';
import 'package:weather_clean_architecture/data/dto/base_dto.dart';
import 'package:weather_clean_architecture/data/dto/current_response_dto.dart';
import 'package:weather_clean_architecture/data/dto/current_units_response_dto.dart';
import 'package:weather_clean_architecture/data/dto/daily_response_dto.dart';
import 'package:weather_clean_architecture/data/dto/daily_units_response_dto.dart';
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
