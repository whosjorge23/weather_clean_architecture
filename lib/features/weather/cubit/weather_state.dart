part of 'weather_cubit.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object?> get props => [];
}

final class WeatherInitial extends WeatherState {
  const WeatherInitial();
}

class WeatherData extends WeatherState {
  const WeatherData(this.weather);

  final WeatherResponseEntity weather;

  @override
  List<Object?> get props => [weather];
}

class WeatherError extends WeatherState {
  const WeatherError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class WeatherLoading extends WeatherState {
  const WeatherLoading();
}
