// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_list_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokeListItems _$$_PokeListItemsFromJson(Map<String, dynamic> json) =>
    _$_PokeListItems(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokeNamedApiResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokeListItemsToJson(_$_PokeListItems instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
