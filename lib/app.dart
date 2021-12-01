// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_example/page/pokemon_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PokemonListPage(),
    );
  }
}
