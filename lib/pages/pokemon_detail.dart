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
          Text(name),
          const SizedBox(height: 32,),
          _DetailTable(
            weight: '${poke.weight.toDouble() / 10.0} kg',
            height: '${poke.height.toDouble() / 10.0} m',
            type: poke.types.map((e) => e.type.name).join(', ').toString(),
          )
        ],),
      ),
      error: (e, _) => const Center(child: Text('Error'),), 
      loading: () => const Center(child: CircularProgressIndicator(),)
    );
  }
}

class _DetailTable extends StatelessWidget {
  const _DetailTable({
    Key? key, 
    required this.weight,
    required this.height,
    required this.type
  }) : super(key: key);

  final String weight;
  final String height;
  final String type;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Table(children: [
        TableRow(children: [
          const _TableTitleCell(title: 'Type'),
          _TableDescriptionCell(description: type,)
        ]),
        TableRow(children: [
          const _TableTitleCell(title: 'Weight',),
          _TableDescriptionCell(description: weight,),
        ]),
        TableRow(children:[
          const _TableTitleCell(title: 'Height',),
          _TableDescriptionCell(description: height,),
        ]),
      ],
      border: TableBorder.all(color: Colors.blueGrey),),
    );
  }
}

class _TableDescriptionCell extends StatelessWidget {
  const _TableDescriptionCell({
    Key? key, 
    required this.description
  }) : super(key: key);

  final String description;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(child: Text(description),)
    );
  }
}

class _TableTitleCell extends StatelessWidget {
  const _TableTitleCell({
    Key? key, 
    required this.title
  }) : super(key: key);
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.blueGrey.shade100,
      child: Center(child: Text(title),)
    );
  }
}