import 'package:clean_arch/src/features/feature_default/domain/entities/default.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee.state.freezed.dart';

@freezed
class CoffeeState with _$CoffeeState {
  const factory CoffeeState.initialState() = InitialState;
  const factory CoffeeState.getCoffeeLoading() =
  CoffeeLoading;
  const factory CoffeeState.getCoffeeSuccess({
    required CoffeeEntity coffee,

  }) = GetCoffeeSuccess;
  const factory CoffeeState.getCoffeeFailure() =
  GetCoffeeFailure;
}
