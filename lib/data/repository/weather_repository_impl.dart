import 'package:weather_clean_architecture/core/network/response.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_remote_datasource.dart';
import 'package:weather_clean_architecture/domain/entities/weather_response_entity.dart';
import 'package:weather_clean_architecture/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  WeatherRepositoryImpl(
      {required WeatherRemoteDataSource weatherRemoteDataSource})
      : _weatherRemoteDataSource = weatherRemoteDataSource;

  @override
  Future<ResponseWrapper<WeatherResponseEntity>> getWeather({
    required double latitude,
    required double longitude,
    required String temperatureUnit,
    required String windSpeed,
  }) {
    return execute(() async {
      final response = await _weatherRemoteDataSource.getWeather(
        latitude: latitude,
        longitude: longitude,
        temperatureUnit: temperatureUnit,
        windSpeed: windSpeed,
      );
      return response.toEntity();
    });
  }
}
