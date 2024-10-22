import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:weather_clean_architecture/data/datasource/location/location_local_data_source.dart';
import 'package:weather_clean_architecture/domain/repository/location_local_repository.dart';

class LocationLocalRepositoryImpl implements LocationLocalRepository {
  final LocationLocalDataSource _locationLocalDataSource;

  LocationLocalRepositoryImpl(
      {required LocationLocalDataSource locationLocalDataSource})
      : _locationLocalDataSource = locationLocalDataSource;

  @override
  Future<Position> getCurrentPosition() {
    return _locationLocalDataSource.getLastKnownLocation();
  }
}
