import 'dart:ui';

import 'package:weather_clean_architecture/data/datasource/local/app_settings_local_data_source.dart';
import 'package:weather_clean_architecture/domain/repository/app_settings_local_repository.dart';

class AppSettingsLocalRepositoryImpl implements AppSettingsLocalRepository {
  final AppSettingsLocalDataSource _appSettingsLocalDataSource;

  AppSettingsLocalRepositoryImpl(
      {required AppSettingsLocalDataSource appSettingsLocalDataSource})
      : _appSettingsLocalDataSource = appSettingsLocalDataSource;

  @override
  Future<Locale> getLocale() {
    return _appSettingsLocalDataSource.getLocale();
  }

  @override
  Future<void> setLocale(Locale locale) {
    return _appSettingsLocalDataSource.setLocale(locale);
  }
}
