import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherResponseDTO> getWeather({
    required double latitude,
    required double longitude,
    required String temperatureUnit,
    required String windSpeed,
  });
}
