import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';

part 'weather_api_client.g.dart';

@RestApi()
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio) = _WeatherApiClient;

  @GET(
      '/v1/forecast?latitude={latitude}&longitude={longitude}&current=temperature_2m,precipitation,weather_code,wind_speed_10m&temperature_unit={temperatureUnit}&wind_speed_unit={windSpeed}')
  Future<WeatherResponseDTO> getWeather(
    @Path('latitude') double latitude,
    @Path('longitude') double longitude,
    @Path('temperatureUnit') String temperatureUnit,
    @Path('windSpeed') String windSpeed,
  );
}
