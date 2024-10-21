import 'package:flutter/material.dart';
import 'package:weather_clean_architecture/core/routes/go_router_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: MaterialApp.router(
        routerConfig: goRouter,
      ),
    );
  }
}
