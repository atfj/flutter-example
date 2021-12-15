// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_example/data/entities/poke_resource_query.dart';
import 'package:flutter_example/data/poke_resources_provider.dart';

void main() {
  test('resources fetching test', () async {
    final container = ProviderContainer();
    const query = PokeResourceQuery(limit: 3, offset: 0);
    final resources = await container.read(pokeResourcesProvider(query).future);
    expect(resources.results.length, 3);
  });

  test('list fetching test', () async {
    final container = ProviderContainer();
    const query = PokeResourceQuery(limit: 3, offset: 0);
    final resources = await container.read(pokemonListProvider(query));
    expect(resources.length, 3);
  });

  test('pokemon fetching test', () async {
    final container = ProviderContainer();
    final resources = await container.read(pokemonProvider("clefairy").future);
    expect(resources.name, "clefairy");
  });
}
