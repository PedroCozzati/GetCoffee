import 'package:clean_arch/src/features/feature_default/domain/entities/default.entity.dart';
import 'package:clean_arch/src/features/feature_default/domain/errors/default.failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICoffeeRepository {
  Future<Either<CoffeeFailure, CoffeeEntity>> getCoffee();
}
