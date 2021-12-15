// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_example/data/poke_resources_provider.dart';

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
      body: _PokemonDetail(name: name,)
    );
  }
}

class _PokemonDetail extends ConsumerWidget {
  const _PokemonDetail({
    Key? key,
    required this.name
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokemonProvider(name));
    
    return state.when(
      data: (poke) => Center(child: 
        Column(children: [
          const SizedBox(height: 32,),
          poke.sprites.frontDefault != null ?
              Image.network(poke.sprites.frontDefault!) :
              const Text('No Image'),
          const SizedBox(height: 16,),
          Text(name)
        ],),
      ),
      error: (e, _) => const Center(child: Text('Error'),), 
      loading: () => const Center(child: CircularProgressIndicator(),)
    );
  }
}
