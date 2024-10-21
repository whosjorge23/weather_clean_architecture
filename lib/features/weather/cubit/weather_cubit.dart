import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';
import 'package:weather_clean_architecture/domain/usecases/weather_use_cases.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherUseCases) : super(const WeatherInitial());
  final WeatherUseCases _weatherUseCases;

  Future<void> getWeather() async {
    emit(const WeatherLoading());
    final response = await _weatherUseCases.getWeather(52.52, 13.41);
    response.when(
      (data) => emit(WeatherData(data)),
      (error) {
        emit(WeatherError(error));
      },
    );
  }
}
