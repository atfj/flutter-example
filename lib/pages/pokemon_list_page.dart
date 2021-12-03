// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_example/data/entities/pokemon_summary.dart';
import 'package:flutter_example/data/poke_resources_provider.dart';
import 'package:flutter_example/pages/pokemon_list_controller.dart';

class PokemonListPage extends StatelessWidget {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example'),
      ),
      body: Center(
        child: _PokemonListView()
      )
    );
  }
}

class _PokemonListView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokemonListControllerProvider);
    final isLoading = state.maybeWhen(orElse: () => false, loading: () => true);

    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        final propotion = notification.metrics.pixels / notification.metrics.maxScrollExtent;
        if (!isLoading && propotion > 0.7) {
          // request api
          ref.read(pokemonListControllerProvider.notifier).fetchList();
        }
        return false;
      },
      child: state.when(
        data: (items) => ListView(
          children: [ 
            for (PokemonSummary item in items)
              _PokemonListItem(name: item.name, url: item.iconUrl,)
           ],
        ), 
        error: (e, _) => const Text('Error'), 
        loading: () => const LinearProgressIndicator()
      )
    );
  }
}

class _PokemonListItem extends StatelessWidget {
  const _PokemonListItem({
    Key? key, 
    required this.name,
    required this.url
  }) : super(key: key);
  
  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      onPressed: () {},
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(name),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Image.network(url),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.grey.shade300,
            ),
          )
        ],
      )
    );
  }
}
