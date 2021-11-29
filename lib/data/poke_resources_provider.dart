// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_example/data/entities/poke_list_items.dart';
import 'package:flutter_example/data/entities/poke_resource_query.dart';
import 'package:flutter_example/data/http_client_provider.dart';

const baseUrl = 'https://pokeapi.co/api/v2/pokemon/';

final pokeResourcesProvider = FutureProvider.family((ref, PokeResourceQuery query) async {
  final endpoint = '$baseUrl?limit=${query.limit}&offset=${query.offset}';
  final result = await ref.watch(httpClinetProvider).get(Uri.parse(endpoint));
  final json = jsonDecode(result.body) as Map<String, dynamic>;
  return PokeListItems.fromJson(json);
});
