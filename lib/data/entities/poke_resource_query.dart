// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'poke_resource_query.freezed.dart';

@freezed
abstract class PokeResourceQuery with _$PokeResourceQuery {
  const factory PokeResourceQuery({
    required int limit,
    required int offset,
  }) = _PokeResourceQuery;
}
