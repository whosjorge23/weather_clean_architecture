import 'package:flutter/material.dart';

abstract class AppSettingsLocalDataSource {
  Future<void> setLocale(Locale locale);

  Future<Locale> getLocale();
}
