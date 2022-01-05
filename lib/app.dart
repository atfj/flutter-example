// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_example/pages/pokemon_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PokemonList(),
    );
  }
}
