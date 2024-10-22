import 'package:geolocator/geolocator.dart';

abstract class LocationLocalDataSource {
  Future<Position> getLastKnownLocation();
}
