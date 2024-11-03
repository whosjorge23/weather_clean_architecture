import 'package:flutter/material.dart';
import 'package:weather_clean_architecture/domain/repository/app_settings_local_repository.dart';

class AppSettingsUseCases {
  final AppSettingsLocalRepository appSettingsLocalRepository;

  const AppSettingsUseCases(this.appSettingsLocalRepository);

  Future<void> setLocale(Locale locale) {
    return appSettingsLocalRepository.setLocale(locale);
  }

  Future<Locale> getLocale() {
    return appSettingsLocalRepository.getLocale();
  }
}
