// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_example/data/entities/poke_named_api_resource.dart';

part 'pokemon_type.freezed.dart';
part 'pokemon_type.g.dart';

@freezed
abstract class PokemonType with _$PokemonType {
  const factory PokemonType({
    required int slot,
    required PokeNamedApiResource type
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}
