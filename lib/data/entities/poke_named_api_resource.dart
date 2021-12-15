// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'poke_named_api_resource.freezed.dart';
part 'poke_named_api_resource.g.dart';

@freezed
abstract class PokeNamedApiResource with _$PokeNamedApiResource {
  const factory PokeNamedApiResource({
    required String name,
    required String url
  }) = _PokeNamedApiResource;

  factory PokeNamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$PokeNamedApiResourceFromJson(json);
}
