import 'package:geolocator/geolocator.dart';

abstract class LocationLocalRepository {
  Future<Position> getCurrentPosition();
}
