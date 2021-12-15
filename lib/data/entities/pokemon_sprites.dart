// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_sprites.freezed.dart';

@freezed
abstract class PokemonSprites with _$PokemonSprites {
  const factory PokemonSprites({
    required String? backDefault,
    required String? frontDefault
  }) = _PokemonSprites;

  // ignore: prefer_constructors_over_static_methods 
  static PokemonSprites fromJson(Map<String, dynamic> json) => PokemonSprites(
    backDefault: json['back_default'], 
    frontDefault: json['front_default']
  );
}
