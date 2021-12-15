// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) {
  return _PokemonType.fromJson(json);
}

/// @nodoc
class _$PokemonTypeTearOff {
  const _$PokemonTypeTearOff();

  _PokemonType call({required int slot, required PokeNamedApiResource type}) {
    return _PokemonType(
      slot: slot,
      type: type,
    );
  }

  PokemonType fromJson(Map<String, Object?> json) {
    return PokemonType.fromJson(json);
  }
}

/// @nodoc
const $PokemonType = _$PokemonTypeTearOff();

/// @nodoc
mixin _$PokemonType {
  int get slot => throw _privateConstructorUsedError;
  PokeNamedApiResource get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeCopyWith<PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) then) =
      _$PokemonTypeCopyWithImpl<$Res>;
  $Res call({int slot, PokeNamedApiResource type});

  $PokeNamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res> implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._value, this._then);

  final PokemonType _value;
  // ignore: unused_field
  final $Res Function(PokemonType) _then;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeNamedApiResource,
    ));
  }

  @override
  $PokeNamedApiResourceCopyWith<$Res> get type {
    return $PokeNamedApiResourceCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonTypeCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$PokemonTypeCopyWith(
          _PokemonType value, $Res Function(_PokemonType) then) =
      __$PokemonTypeCopyWithImpl<$Res>;
  @override
  $Res call({int slot, PokeNamedApiResource type});

  @override
  $PokeNamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class __$PokemonTypeCopyWithImpl<$Res> extends _$PokemonTypeCopyWithImpl<$Res>
    implements _$PokemonTypeCopyWith<$Res> {
  __$PokemonTypeCopyWithImpl(
      _PokemonType _value, $Res Function(_PokemonType) _then)
      : super(_value, (v) => _then(v as _PokemonType));

  @override
  _PokemonType get _value => super._value as _PokemonType;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_PokemonType(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeNamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonType implements _PokemonType {
  const _$_PokemonType({required this.slot, required this.type});

  factory _$_PokemonType.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeFromJson(json);

  @override
  final int slot;
  @override
  final PokeNamedApiResource type;

  @override
  String toString() {
    return 'PokemonType(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonType &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  _$PokemonTypeCopyWith<_PokemonType> get copyWith =>
      __$PokemonTypeCopyWithImpl<_PokemonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeToJson(this);
  }
}

abstract class _PokemonType implements PokemonType {
  const factory _PokemonType(
      {required int slot, required PokeNamedApiResource type}) = _$_PokemonType;

  factory _PokemonType.fromJson(Map<String, dynamic> json) =
      _$_PokemonType.fromJson;

  @override
  int get slot;
  @override
  PokeNamedApiResource get type;
  @override
  @JsonKey(ignore: true)
  _$PokemonTypeCopyWith<_PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}
