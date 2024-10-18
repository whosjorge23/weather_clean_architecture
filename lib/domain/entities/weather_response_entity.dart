import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';
import 'package:weather_clean_architecture/domain/entities/base_entity.dart';
import 'package:weather_clean_architecture/domain/entities/current_response_entity.dart';
import 'package:weather_clean_architecture/domain/entities/current_units_response_entity.dart';

class WeatherResponseEntity extends BaseEntity {
  final CurrentResponseEntity? current;
  final CurrentUnitsResponseEntity? currentUnits;
  final double? elevation;

  const WeatherResponseEntity({
    this.current,
    this.elevation,
    this.currentUnits,
  });

  @override
  WeatherResponseDTO toDTO() {
    return WeatherResponseDTO(
      current: current?.toDTO(),
      elevation: elevation,
      currentUnits: currentUnits?.toDTO(),
    );
  }

  @override
  List<Object?> get props => [current, elevation, currentUnits];
}
