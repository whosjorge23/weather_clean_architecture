import 'package:equatable/equatable.dart';
import 'package:weather_clean_architecture/data/datasource/mapper/entity_mapper_mixin.dart';

abstract class BaseEntity<I> extends Equatable with EntityMapperMixin<I> {
  const BaseEntity();
}