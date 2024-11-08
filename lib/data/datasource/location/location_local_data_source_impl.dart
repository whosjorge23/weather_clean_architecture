import 'package:geolocator/geolocator.dart';
import 'package:weather_clean_architecture/core/service/location_service.dart';
import 'package:weather_clean_architecture/data/datasource/location/location_local_data_source.dart';

class LocationLocalDataSourceImpl implements LocationLocalDataSource {
  final LocationService locationService;

  LocationLocalDataSourceImpl({required this.locationService});

  @override
  Future<Position> getLastKnownLocation() async {
    return await locationService.getLocation();
  }
}
