// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:flutter_example/data/entities/poke_list_items.dart';
import 'package:flutter_example/data/entities/poke_named_api_resource.dart';

void main() {
  test('parsing of resource item test', () async {
    const raw = '''
    {
      "count": 100,
      "next": "test",
      "previous": null,
      "results": [
        {"name": "bulbasaur", "url": "test1"},
        {"name": "ivysaur", "url": "test2"},
        {"name": "venusaur", "url": "test3"}
      ]
    }
    ''';

    final json = jsonDecode(raw) as Map<String, dynamic>;
    final items = PokeListItems.fromJson(json);
    const head = PokeNamedApiResource(name: 'bulbasaur', url: 'test1');

    expect(items.count, 100);
    expect(items.next, 'test');
    expect(items.previous, null);
    expect(items.results.first, head);
  });
}
