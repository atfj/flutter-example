// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_example/data/entities/pokemon_sprites.dart';
import 'package:flutter_example/data/entities/pokemon_type.dart';

part 'pokemon.freezed.dart';

@freezed
abstract class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required int height,
    required int weight,
    required PokemonSprites sprites,
    required List<PokemonType> types
  }) = _Pokemon;

  // ignore: prefer_constructors_over_static_methods 
  static Pokemon fromJson(Map<String, dynamic> json) => Pokemon(
    id: json['id'] as int, 
    name: json['name'], 
    height: json['height'] as int, 
    weight: json['weight'] as int,
    sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
    types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList()
  );
}
