// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_sprites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonSpritesTearOff {
  const _$PokemonSpritesTearOff();

  _PokemonSprites call(
      {required String? backDefault, required String? frontDefault}) {
    return _PokemonSprites(
      backDefault: backDefault,
      frontDefault: frontDefault,
    );
  }
}

/// @nodoc
const $PokemonSprites = _$PokemonSpritesTearOff();

/// @nodoc
mixin _$PokemonSprites {
  String? get backDefault => throw _privateConstructorUsedError;
  String? get frontDefault => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonSpritesCopyWith<PokemonSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesCopyWith<$Res> {
  factory $PokemonSpritesCopyWith(
          PokemonSprites value, $Res Function(PokemonSprites) then) =
      _$PokemonSpritesCopyWithImpl<$Res>;
  $Res call({String? backDefault, String? frontDefault});
}

/// @nodoc
class _$PokemonSpritesCopyWithImpl<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  _$PokemonSpritesCopyWithImpl(this._value, this._then);

  final PokemonSprites _value;
  // ignore: unused_field
  final $Res Function(PokemonSprites) _then;

  @override
  $Res call({
    Object? backDefault = freezed,
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      backDefault: backDefault == freezed
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PokemonSpritesCopyWith<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  factory _$PokemonSpritesCopyWith(
          _PokemonSprites value, $Res Function(_PokemonSprites) then) =
      __$PokemonSpritesCopyWithImpl<$Res>;
  @override
  $Res call({String? backDefault, String? frontDefault});
}

/// @nodoc
class __$PokemonSpritesCopyWithImpl<$Res>
    extends _$PokemonSpritesCopyWithImpl<$Res>
    implements _$PokemonSpritesCopyWith<$Res> {
  __$PokemonSpritesCopyWithImpl(
      _PokemonSprites _value, $Res Function(_PokemonSprites) _then)
      : super(_value, (v) => _then(v as _PokemonSprites));

  @override
  _PokemonSprites get _value => super._value as _PokemonSprites;

  @override
  $Res call({
    Object? backDefault = freezed,
    Object? frontDefault = freezed,
  }) {
    return _then(_PokemonSprites(
      backDefault: backDefault == freezed
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PokemonSprites implements _PokemonSprites {
  const _$_PokemonSprites(
      {required this.backDefault, required this.frontDefault});

  @override
  final String? backDefault;
  @override
  final String? frontDefault;

  @override
  String toString() {
    return 'PokemonSprites(backDefault: $backDefault, frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSprites &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @override
  int get hashCode => Object.hash(runtimeType, backDefault, frontDefault);

  @JsonKey(ignore: true)
  @override
  _$PokemonSpritesCopyWith<_PokemonSprites> get copyWith =>
      __$PokemonSpritesCopyWithImpl<_PokemonSprites>(this, _$identity);
}

abstract class _PokemonSprites implements PokemonSprites {
  const factory _PokemonSprites(
      {required String? backDefault,
      required String? frontDefault}) = _$_PokemonSprites;

  @override
  String? get backDefault;
  @override
  String? get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$PokemonSpritesCopyWith<_PokemonSprites> get copyWith =>
      throw _privateConstructorUsedError;
}
