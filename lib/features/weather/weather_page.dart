import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_clean_architecture/features/weather/cubit/weather_cubit.dart';

import 'widgets/weather_page_content.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Weather Page'),
      // ),
      body: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (context, state) {
          if (state is WeatherError) {
            showDialog(
                context: context,
                builder: (context) =>
                    AlertDialog(content: Text(state.message)));
          }
        },
        builder: (context, state) => switch (state) {
          WeatherData() => WeatherPageContent(state.weather),
          WeatherLoading() => const Center(
                child: CircularProgressIndicator(
              color: Colors.black,
            )),
          _ => Container(),
        },
      ),
    );
  }
}
