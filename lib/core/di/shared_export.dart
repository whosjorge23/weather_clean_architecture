import 'package:get_it/get_it.dart';
import 'package:weather_clean_architecture/core/environment/environment.dart';
import 'package:weather_clean_architecture/core/service/locale_service.dart';
import 'package:weather_clean_architecture/core/service/shared_preferences_service.dart';
import 'package:weather_clean_architecture/data/datasource/local/app_settings_local_data_source.dart';
import 'package:weather_clean_architecture/data/datasource/location/location_local_data_source.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_api_client.dart';
import 'package:weather_clean_architecture/data/datasource/weather/weather_remote_datasource.dart';
import 'package:weather_clean_architecture/domain/repository/app_settings_local_repository.dart';
import 'package:weather_clean_architecture/domain/repository/location_local_repository.dart';
import 'package:weather_clean_architecture/domain/repository/weather_repository.dart';
import 'package:weather_clean_architecture/domain/usecases/app_settings_use_cases.dart';
import 'package:weather_clean_architecture/domain/usecases/weather_use_cases.dart';

Environment get environment => GetIt.I<Environment>();

// Local services
SharedPreferenceService get sharedPreferenceService =>
    GetIt.I<SharedPreferenceService>();

// Api Client
WeatherApiClient get weatherApiClient => GetIt.I<WeatherApiClient>();

// Remote Data Source
WeatherRemoteDataSource get weatherRemoteDataSource =>
    GetIt.I<WeatherRemoteDataSource>();

//Local Data Source
LocationLocalDataSource get locationLocalDataSource =>
    GetIt.I<LocationLocalDataSource>();

AppSettingsLocalDataSource get appSettingsLocalDataSource =>
    GetIt.I<AppSettingsLocalDataSource>();

// Repositories
WeatherRepository get weatherRepository => GetIt.I<WeatherRepository>();

// Local Repositories
LocationLocalRepository get locationLocalRepository =>
    GetIt.I<LocationLocalRepository>();

AppSettingsLocalRepository get appSettingsLocalRepository =>
    GetIt.I<AppSettingsLocalRepository>();

// Use Cases
WeatherUseCases get weatherUseCases => GetIt.I<WeatherUseCases>();

AppSettingsUseCases get appSettingsUseCases => GetIt.I<AppSettingsUseCases>();

//Services
// Locale app service
LocaleService get localeService => GetIt.I<LocaleService>();
