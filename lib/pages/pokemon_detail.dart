// Flutter imports:
import 'package:flutter/material.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example'),
      ),
      body: Center(
        child: _PokemonDetail()
      )
    );
  }
}

class _PokemonDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('test');
  }
}
