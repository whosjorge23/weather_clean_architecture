import 'dart:io';

import 'package:flutter/material.dart';

class LocaleService {
  String get currentLocale => Platform.localeName.substring(3);

  String temperatureUnit() {
    if (currentLocale == 'US') {
      return 'fahrenheit';
    } else {
      return 'celsius';
    }
  }

  String speedUnit() {
    if (currentLocale == 'US') {
      return 'mph';
    } else {
      return 'kmh';
    }
  }
}
