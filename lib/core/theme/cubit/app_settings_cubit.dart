import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_clean_architecture/domain/usecases/app_settings_use_cases.dart';

class AppSettingsCubit extends Cubit<Locale> {
  AppSettingsCubit(this.appSettingsUseCases) : super(Locale('en'));

  final AppSettingsUseCases appSettingsUseCases;

  void loadLocale() async {
    final locale = await appSettingsUseCases.getLocale();
    emit(locale);
  }

  void changeLocale(Locale? locale) async {
    await appSettingsUseCases.setLocale(locale ?? const Locale('en'));
    emit(locale ?? const Locale('en'));
  }
}
