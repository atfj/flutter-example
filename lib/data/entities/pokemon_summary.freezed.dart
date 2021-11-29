// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonSummaryTearOff {
  const _$PokemonSummaryTearOff();

  _PokemonSummary call({required String name, required String iconUrl}) {
    return _PokemonSummary(
      name: name,
      iconUrl: iconUrl,
    );
  }
}

/// @nodoc
const $PokemonSummary = _$PokemonSummaryTearOff();

/// @nodoc
mixin _$PokemonSummary {
  String get name => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonSummaryCopyWith<PokemonSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSummaryCopyWith<$Res> {
  factory $PokemonSummaryCopyWith(
          PokemonSummary value, $Res Function(PokemonSummary) then) =
      _$PokemonSummaryCopyWithImpl<$Res>;
  $Res call({String name, String iconUrl});
}

/// @nodoc
class _$PokemonSummaryCopyWithImpl<$Res>
    implements $PokemonSummaryCopyWith<$Res> {
  _$PokemonSummaryCopyWithImpl(this._value, this._then);

  final PokemonSummary _value;
  // ignore: unused_field
  final $Res Function(PokemonSummary) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonSummaryCopyWith<$Res>
    implements $PokemonSummaryCopyWith<$Res> {
  factory _$PokemonSummaryCopyWith(
          _PokemonSummary value, $Res Function(_PokemonSummary) then) =
      __$PokemonSummaryCopyWithImpl<$Res>;
  @override
  $Res call({String name, String iconUrl});
}

/// @nodoc
class __$PokemonSummaryCopyWithImpl<$Res>
    extends _$PokemonSummaryCopyWithImpl<$Res>
    implements _$PokemonSummaryCopyWith<$Res> {
  __$PokemonSummaryCopyWithImpl(
      _PokemonSummary _value, $Res Function(_PokemonSummary) _then)
      : super(_value, (v) => _then(v as _PokemonSummary));

  @override
  _PokemonSummary get _value => super._value as _PokemonSummary;

  @override
  $Res call({
    Object? name = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_PokemonSummary(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PokemonSummary implements _PokemonSummary {
  const _$_PokemonSummary({required this.name, required this.iconUrl});

  @override
  final String name;
  @override
  final String iconUrl;

  @override
  String toString() {
    return 'PokemonSummary(name: $name, iconUrl: $iconUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSummary &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, iconUrl);

  @JsonKey(ignore: true)
  @override
  _$PokemonSummaryCopyWith<_PokemonSummary> get copyWith =>
      __$PokemonSummaryCopyWithImpl<_PokemonSummary>(this, _$identity);
}

abstract class _PokemonSummary implements PokemonSummary {
  const factory _PokemonSummary(
      {required String name, required String iconUrl}) = _$_PokemonSummary;

  @override
  String get name;
  @override
  String get iconUrl;
  @override
  @JsonKey(ignore: true)
  _$PokemonSummaryCopyWith<_PokemonSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
