import 'dart:convert';
import 'package:clean_arch/src/features/feature_default/domain/errors/default.failure.dart';
import 'package:http/http.dart' as http;
import 'package:clean_arch/src/features/feature_default/data/datasource/coffee.datasource.dart';
import 'package:clean_arch/src/features/feature_default/data/models/coffee.model.dart';

class CoffeeDatasourceImpl implements ICoffeeDataSource {

  @override
  Future<CoffeeModel> getCoffee() async {
    try {
      final result =
      await http.get(Uri.parse('https://coffee.alexflipnote.dev/random.json'));
      var decodedJson = jsonDecode(result.body);
      
      if (result.statusCode == 200 || result.statusCode == 201) {
        return CoffeeModel.fromJson(decodedJson);
      }
    } catch (e) {
      CoffeeDatasourceError(
          'Erro');
    }

    throw CoffeeDatasourceError(
        'Erro');
  }
}
