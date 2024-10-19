import 'package:weather_clean_architecture/data/datasource/weather/weather_api_client.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_remote_datasource.dart';
import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final WeatherApiClient client;

  WeatherRemoteDataSourceImpl({required this.client});

  @override
  Future<WeatherResponseDTO> getWeather(
      {required latitude, required longitude}) {
    return client.getWeather(latitude, longitude);
  }
}
