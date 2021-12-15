// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_summary.freezed.dart';

@freezed
abstract class PokemonSummary with _$PokemonSummary {
  const factory PokemonSummary({
    required String name,
    required String iconUrl
  }) = _PokemonSummary;
}
