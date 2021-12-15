// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_example/data/entities/poke_named_api_resource.dart';

part 'poke_list_items.freezed.dart';
part 'poke_list_items.g.dart';

@freezed
abstract class PokeListItems with _$PokeListItems {
  const factory PokeListItems({
    required int count,
    required String? next,
    required String? previous,
    required List<PokeNamedApiResource> results
  }) = _PokeListItems;

  factory PokeListItems.fromJson(Map<String, dynamic> json) =>
      _$PokeListItemsFromJson(json);
}
