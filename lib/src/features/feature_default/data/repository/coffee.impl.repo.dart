import 'package:clean_arch/src/features/feature_default/data/datasource/coffee.datasource.dart';
import 'package:clean_arch/src/features/feature_default/domain/entities/default.entity.dart';
import 'package:clean_arch/src/features/feature_default/domain/errors/default.failure.dart';
import 'package:clean_arch/src/features/feature_default/domain/repositories/coffee.repository.dart';
import 'package:dartz/dartz.dart';

class CoffeeRepositoryImp implements ICoffeeRepository {
  final ICoffeeDataSource coffeeDatasource;

 CoffeeRepositoryImp({required this.coffeeDatasource});

  @override
  Future<Either<CoffeeFailure, CoffeeEntity>>
  getCoffee() async {
    try {
      final result = await coffeeDatasource.getCoffee();
      return Right(result);
    } on Exception {
      return Left(
        CoffeeDatasourceError(
          'Erro no datasource',
        ),
      );
    }
  }
}
