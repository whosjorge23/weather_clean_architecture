import 'package:flutter/material.dart';

abstract class AppSettingsLocalRepository {
  Future<void> setLocale(Locale locale);

  Future<Locale> getLocale();
}
