// Flutter imports:
import 'package:flutter/material.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({
    Key? key,
    required this.name
  }) : super(key: key);

  final String name;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example'),
      ),
      body: Center(
        child: _PokemonDetail(name: name,)
      )
    );
  }
}

class _PokemonDetail extends StatelessWidget {
  const _PokemonDetail({
    Key? key,
    required this.name
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}
