// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_example/data/entities/poke_resource_query.dart';
import 'package:flutter_example/data/entities/pokemon_summary.dart';
import 'package:flutter_example/data/poke_resources_provider.dart';

final pokemonListControllerProvider = StateNotifierProvider<PokemonListController, AsyncValue<List<PokemonSummary>>>(
  (ref) => PokemonListController(ref.read)
);

class PokemonListController extends StateNotifier<AsyncValue<List<PokemonSummary>>> {
  PokemonListController(this._reader) : super(const AsyncLoading()) {
    fetchFirst();
  }

  static const _limit = 20;

  final Reader _reader;

  Future<void> fetchList() async {
    final data = state.value;
    if (data != null) {
      final items = await fetchNext(_limit, data.length);
      final list = [...data, ...items];
      state = AsyncValue.data(list);
    }
  }

  Future<List<PokemonSummary>> fetchNext(int limit, int length) async {
    final query = PokeResourceQuery(limit: limit, offset: length);
    final result = await _reader(pokemonListProvider(query));
    return result;
  }

  Future<void> fetchFirst() async {
    try {
      final result = await fetchNext(_limit, 0);
      state = AsyncValue.data(result);
    } on Exception catch(e) {
      state = AsyncValue.error(e);
    }
  }
}
