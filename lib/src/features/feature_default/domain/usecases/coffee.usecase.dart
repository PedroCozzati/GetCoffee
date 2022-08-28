import 'package:clean_arch/src/features/feature_default/domain/entities/default.entity.dart';
import 'package:clean_arch/src/features/feature_default/domain/errors/default.failure.dart';
import 'package:clean_arch/src/features/feature_default/domain/repositories/coffee.repository.dart';
import 'package:dartz/dartz.dart';

abstract class ICoffeeUseCase {
  Future<Either<CoffeeFailure, CoffeeEntity>> call();
}

class CoffeeUseCase implements ICoffeeUseCase {
  final ICoffeeRepository _repository;

  CoffeeUseCase(this._repository);

  @override
  Future<Either<CoffeeFailure, CoffeeEntity>> call() async {
    return _repository.getCoffee();
  }
}
