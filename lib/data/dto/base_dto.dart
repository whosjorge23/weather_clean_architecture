import 'package:equatable/equatable.dart';
import 'package:weather_clean_architecture/data/datasource/mapper/dto_mapper_mixin.dart';

abstract class BaseDTO<I> extends Equatable with DTOMapperMixin<I> {
  const BaseDTO();
}