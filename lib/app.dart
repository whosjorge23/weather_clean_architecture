import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_clean_architecture/core/di/shared_export.dart';
import 'package:weather_clean_architecture/core/routes/go_router_config.dart';
import 'package:weather_clean_architecture/core/theme/app_theme.dart';
import 'package:weather_clean_architecture/core/theme/cubit/app_settings_cubit.dart';
import 'package:weather_clean_architecture/l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppSettingsCubit(appSettingsUseCases),
      child: BlocBuilder<AppSettingsCubit, Locale>(
        builder: (context, state) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: FocusManager.instance.primaryFocus?.unfocus,
            child: MaterialApp.router(
              locale: state,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              routerConfig: goRouter,
              theme: AppTheme.fromBrightness(
                brightness: Brightness.light,
              ).toThemeData(),
              darkTheme: AppTheme.fromBrightness(
                brightness: Brightness.light,
              ).toThemeData(),
            ),
          );
        },
      ),
    );
  }
}
