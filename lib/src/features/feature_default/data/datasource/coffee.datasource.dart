
import 'package:clean_arch/src/features/feature_default/data/models/coffee.model.dart';

abstract class ICoffeeDataSource {
  Future<CoffeeModel> getCoffee();
}
