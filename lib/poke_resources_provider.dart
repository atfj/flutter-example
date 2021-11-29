// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_example/http_client_provider.dart';
import 'package:flutter_example/poke_resource_query.dart';

const baseUrl = 'https://pokeapi.co/api/v2/pokemon/';

final pokeResourcesProvider = FutureProvider.family((ref, PokeResourceQuery query) async {
  final endpoint = '$baseUrl?${query.limit}&${query.offset}';
  final result = ref.watch(httpClinetProvider).get(Uri.parse(endpoint));
  final data = await result;
  return data.body;
});
