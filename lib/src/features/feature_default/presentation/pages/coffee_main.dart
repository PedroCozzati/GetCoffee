import 'package:clean_arch/src/features/feature_default/domain/usecases/coffee.usecase.dart';
import 'package:clean_arch/src/features/feature_default/presentation/controllers/coffee.bloc.dart';
import 'package:clean_arch/src/features/feature_default/presentation/pages/coffee_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';

class CoffeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CoffeeBloc>(
            create: (BuildContext context) => CoffeeBloc(
                  coffeeUseCase: getIt.get<ICoffeeUseCase>(),
                )),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coffee',
        home:  CoffeeHomeScreen(),
        theme: ThemeData(primaryColor: Colors.brown),
      ),
    );
  }
}