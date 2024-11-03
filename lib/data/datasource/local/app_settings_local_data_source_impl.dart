import 'dart:ui';

import 'package:weather_clean_architecture/core/service/shared_preferences_service.dart';
import 'package:weather_clean_architecture/data/datasource/local/app_settings_local_data_source.dart';

class AppSettingsLocalDataSourceImpl implements AppSettingsLocalDataSource {
  static const localeKey = 'locale_key';
  final SharedPreferenceService sharedPreferenceService;

  AppSettingsLocalDataSourceImpl({required this.sharedPreferenceService});

  @override
  Future<Locale> getLocale() async {
    final localeString =
        await sharedPreferenceService.getValue<String>(localeKey) ?? 'en';
    return Future.value(Locale(localeString));
  }

  @override
  Future<void> setLocale(Locale locale) {
    return sharedPreferenceService.setValue(localeKey, locale.languageCode);
  }
}
