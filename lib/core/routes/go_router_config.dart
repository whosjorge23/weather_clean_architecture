import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_clean_architecture/core/di/shared_export.dart';
import 'package:weather_clean_architecture/features/weather/cubit/weather_cubit.dart';
import 'package:weather_clean_architecture/features/weather/weather_page.dart';

abstract final class ScreenPaths {
  static const home = '/weather';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: ScreenPaths.home,
  routes: [
    GoRoute(
      path: ScreenPaths.home,
      builder: (context, state) => BlocProvider(
        create: (context) => WeatherCubit(weatherUseCases)..getWeather(),
        child: const WeatherPage(),
      ),
    ),
  ],
);
