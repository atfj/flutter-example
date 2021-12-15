// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:flutter_example/data/entities/pokemon_type.dart';

void main() {
  test('parsing of pokemon type test', () async {
    const raw = '''
    {
      "slot": 1,
      "type": {
        "name": "fairy",
        "url": "https://pokeapi.co/api/v2/type/18/"
      }
    }
    ''';

    final json = jsonDecode(raw) as Map<String, dynamic>;
    final type = PokemonType.fromJson(json);

    expect(type.slot, 1);
    expect(type.type.name, 'fairy');
  });
}
