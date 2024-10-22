import 'package:get_it/get_it.dart';
import 'package:weather_clean_architecture/core/environment/environment.dart';
import 'package:weather_clean_architecture/data/datasource/location/location_local_data_source.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_api_client.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_remote_datasource.dart';
import 'package:weather_clean_architecture/domain/repository/location_local_repository.dart';
import 'package:weather_clean_architecture/domain/repository/weather_repository.dart';
import 'package:weather_clean_architecture/domain/usecases/weather_use_cases.dart';

Environment get environment => GetIt.I<Environment>();

// Api Client
WeatherApiClient get weatherApiClient => GetIt.I<WeatherApiClient>();

// Remote Data Source
WeatherRemoteDataSource get weatherRemoteDataSource =>
    GetIt.I<WeatherRemoteDataSource>();

//Local Data Source
LocationLocalDataSource get locationLocalDataSource =>
    GetIt.I<LocationLocalDataSource>();

// Repositories
WeatherRepository get weatherRepository => GetIt.I<WeatherRepository>();

LocationLocalRepository get locationLocalRepository =>
    GetIt.I<LocationLocalRepository>();

// Use Cases
WeatherUseCases get weatherUseCases => GetIt.I<WeatherUseCases>();
