// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poke_resource_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokeResourceQueryTearOff {
  const _$PokeResourceQueryTearOff();

  _PokeResourceQuery call({required int limit, required int offset}) {
    return _PokeResourceQuery(
      limit: limit,
      offset: offset,
    );
  }
}

/// @nodoc
const $PokeResourceQuery = _$PokeResourceQueryTearOff();

/// @nodoc
mixin _$PokeResourceQuery {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokeResourceQueryCopyWith<PokeResourceQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeResourceQueryCopyWith<$Res> {
  factory $PokeResourceQueryCopyWith(
          PokeResourceQuery value, $Res Function(PokeResourceQuery) then) =
      _$PokeResourceQueryCopyWithImpl<$Res>;
  $Res call({int limit, int offset});
}

/// @nodoc
class _$PokeResourceQueryCopyWithImpl<$Res>
    implements $PokeResourceQueryCopyWith<$Res> {
  _$PokeResourceQueryCopyWithImpl(this._value, this._then);

  final PokeResourceQuery _value;
  // ignore: unused_field
  final $Res Function(PokeResourceQuery) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PokeResourceQueryCopyWith<$Res>
    implements $PokeResourceQueryCopyWith<$Res> {
  factory _$PokeResourceQueryCopyWith(
          _PokeResourceQuery value, $Res Function(_PokeResourceQuery) then) =
      __$PokeResourceQueryCopyWithImpl<$Res>;
  @override
  $Res call({int limit, int offset});
}

/// @nodoc
class __$PokeResourceQueryCopyWithImpl<$Res>
    extends _$PokeResourceQueryCopyWithImpl<$Res>
    implements _$PokeResourceQueryCopyWith<$Res> {
  __$PokeResourceQueryCopyWithImpl(
      _PokeResourceQuery _value, $Res Function(_PokeResourceQuery) _then)
      : super(_value, (v) => _then(v as _PokeResourceQuery));

  @override
  _PokeResourceQuery get _value => super._value as _PokeResourceQuery;

  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_PokeResourceQuery(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PokeResourceQuery implements _PokeResourceQuery {
  const _$_PokeResourceQuery({required this.limit, required this.offset});

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'PokeResourceQuery(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokeResourceQuery &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  _$PokeResourceQueryCopyWith<_PokeResourceQuery> get copyWith =>
      __$PokeResourceQueryCopyWithImpl<_PokeResourceQuery>(this, _$identity);
}

abstract class _PokeResourceQuery implements PokeResourceQuery {
  const factory _PokeResourceQuery({required int limit, required int offset}) =
      _$_PokeResourceQuery;

  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$PokeResourceQueryCopyWith<_PokeResourceQuery> get copyWith =>
      throw _privateConstructorUsedError;
}
