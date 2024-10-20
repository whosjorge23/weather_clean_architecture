import 'package:get_it/get_it.dart';
import 'package:weather_clean_architecture/core/di/shared_export.dart';
import 'package:weather_clean_architecture/core/environment/environment.dart';
import 'package:weather_clean_architecture/core/network/network_client.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_api_client.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_remote_data_source_impl.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_remote_datasource.dart';
import 'package:weather_clean_architecture/data/repository/weather_repository_impl.dart';
import 'package:weather_clean_architecture/domain/repository/weather_repository.dart';
import 'package:weather_clean_architecture/domain/usecases/weather_use_cases.dart';

void registerDependencies(Environment environment) {
  final getIt = GetIt.I;

  // Locale app service
  getIt.registerSingleton(environment);

  // Api Client
  //registerSingleton is used to create a single instance of the object and return it every time it is requested
  getIt.registerSingleton<WeatherApiClient>(
      WeatherApiClient(NetworkClient.getDio()));

  // Register Data Sources
  //registerSingleton is used to create a single instance of the object and return it every time it is requested
  getIt.registerSingleton<WeatherRemoteDataSource>(
      WeatherRemoteDataSourceImpl(client: weatherApiClient));

  // Register Repositories
  //registerSingleton is used to create a single instance of the object and return it every time it is requested
  getIt.registerSingleton<WeatherRepository>(
    WeatherRepositoryImpl(weatherRemoteDataSource: weatherRemoteDataSource),
  );

  // Register Use Cases
  //registerFactory is used to create a new instance of the object every time it is requested
  getIt.registerFactory(() => WeatherUseCases(weatherRepository));

  // Notifier
}
