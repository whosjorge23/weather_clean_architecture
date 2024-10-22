import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_clean_architecture/core/di/shared_export.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';
import 'package:weather_clean_architecture/domain/usecases/weather_use_cases.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherUseCases) : super(const WeatherInitial());
  final WeatherUseCases _weatherUseCases;

  Future<void> getWeather() async {
    Position position = await _weatherUseCases.getLocation();
    emit(const WeatherLoading());
    debugPrint('Position: ${position.latitude} ${position.longitude}');
    final response = await _weatherUseCases.getWeather(
        position.latitude, position.longitude);
    response.when(
      (data) => emit(WeatherData(data)),
      (error) {
        emit(WeatherError(error));
      },
    );
  }
}
