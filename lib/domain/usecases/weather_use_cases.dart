import 'package:weather_clean_architecture/core/network/response.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';
import 'package:weather_clean_architecture/domain/repository/weather_repository.dart';

class WeatherUseCases {
  final WeatherRepository _weatherRepository;

  WeatherUseCases(this._weatherRepository);

  Future<ResponseWrapper<WeatherResponseEntity>> getWeather(
      double latitude, double longitude) async {
    return _weatherRepository.getWeather(
        latitude: latitude, longitude: longitude);
  }
}
