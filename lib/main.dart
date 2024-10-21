import 'package:flutter/material.dart';
import 'package:weather_clean_architecture/app.dart';
import 'package:weather_clean_architecture/bootstrap.dart';
import 'package:weather_clean_architecture/core/di/shared_export.dart';
import 'package:weather_clean_architecture/core/environment/environment.dart';

void main() async {
  bootstrap(Environment.dev);
  runApp(const MyApp());
}
