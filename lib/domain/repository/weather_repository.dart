import 'package:weather_clean_architecture/core/network/response.dart';

import '../entities/weather_response_entity.dart';

abstract class WeatherRepository {
  Future<ResponseWrapper<WeatherResponseEntity>> getWeather(
      {required double latitude, required double longitude});
}
