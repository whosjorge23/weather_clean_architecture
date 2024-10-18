import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_clean_architecture/data/dto/weather_response_dto.dart';

part 'weather_api_client.g.dart';

@RestApi()
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio) = _WeatherApiClient;

  @GET(
      'https://api.open-meteo.com/v1/forecast?latitude={latitude}&longitude={longitude}&current=temperature_2m,precipitation,weather_code,wind_speed_10m')
  Future<WeatherResponseDTO> getWeather(
      @Path('latitude') double latitude, @Path('longitude') double longitude);
}
