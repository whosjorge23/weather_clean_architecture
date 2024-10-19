import 'package:flutter/material.dart';
import 'package:weather_clean_architecture/core/di/register_dependencies.dart';
import 'package:weather_clean_architecture/core/environment/environment.dart';

void bootstrap(Environment environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  registerDependencies(environment);
}
