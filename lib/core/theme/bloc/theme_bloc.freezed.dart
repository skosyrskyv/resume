// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLight,
    required TResult Function() setDark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLight,
    TResult? Function()? setDark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLight,
    TResult Function()? setDark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLightThemeEvent value) setLight,
    required TResult Function(_SetDarkThemeEvent value) setDark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLightThemeEvent value)? setLight,
    TResult? Function(_SetDarkThemeEvent value)? setDark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLightThemeEvent value)? setLight,
    TResult Function(_SetDarkThemeEvent value)? setDark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetLightThemeEventCopyWith<$Res> {
  factory _$$_SetLightThemeEventCopyWith(_$_SetLightThemeEvent value,
          $Res Function(_$_SetLightThemeEvent) then) =
      __$$_SetLightThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetLightThemeEventCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_SetLightThemeEvent>
    implements _$$_SetLightThemeEventCopyWith<$Res> {
  __$$_SetLightThemeEventCopyWithImpl(
      _$_SetLightThemeEvent _value, $Res Function(_$_SetLightThemeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetLightThemeEvent extends _SetLightThemeEvent {
  const _$_SetLightThemeEvent() : super._();

  @override
  String toString() {
    return 'ThemeEvent.setLight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetLightThemeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLight,
    required TResult Function() setDark,
  }) {
    return setLight();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLight,
    TResult? Function()? setDark,
  }) {
    return setLight?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLight,
    TResult Function()? setDark,
    required TResult orElse(),
  }) {
    if (setLight != null) {
      return setLight();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLightThemeEvent value) setLight,
    required TResult Function(_SetDarkThemeEvent value) setDark,
  }) {
    return setLight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLightThemeEvent value)? setLight,
    TResult? Function(_SetDarkThemeEvent value)? setDark,
  }) {
    return setLight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLightThemeEvent value)? setLight,
    TResult Function(_SetDarkThemeEvent value)? setDark,
    required TResult orElse(),
  }) {
    if (setLight != null) {
      return setLight(this);
    }
    return orElse();
  }
}

abstract class _SetLightThemeEvent extends ThemeEvent {
  const factory _SetLightThemeEvent() = _$_SetLightThemeEvent;
  const _SetLightThemeEvent._() : super._();
}

/// @nodoc
abstract class _$$_SetDarkThemeEventCopyWith<$Res> {
  factory _$$_SetDarkThemeEventCopyWith(_$_SetDarkThemeEvent value,
          $Res Function(_$_SetDarkThemeEvent) then) =
      __$$_SetDarkThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetDarkThemeEventCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_SetDarkThemeEvent>
    implements _$$_SetDarkThemeEventCopyWith<$Res> {
  __$$_SetDarkThemeEventCopyWithImpl(
      _$_SetDarkThemeEvent _value, $Res Function(_$_SetDarkThemeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetDarkThemeEvent extends _SetDarkThemeEvent {
  const _$_SetDarkThemeEvent() : super._();

  @override
  String toString() {
    return 'ThemeEvent.setDark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetDarkThemeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLight,
    required TResult Function() setDark,
  }) {
    return setDark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLight,
    TResult? Function()? setDark,
  }) {
    return setDark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLight,
    TResult Function()? setDark,
    required TResult orElse(),
  }) {
    if (setDark != null) {
      return setDark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLightThemeEvent value) setLight,
    required TResult Function(_SetDarkThemeEvent value) setDark,
  }) {
    return setDark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLightThemeEvent value)? setLight,
    TResult? Function(_SetDarkThemeEvent value)? setDark,
  }) {
    return setDark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLightThemeEvent value)? setLight,
    TResult Function(_SetDarkThemeEvent value)? setDark,
    required TResult orElse(),
  }) {
    if (setDark != null) {
      return setDark(this);
    }
    return orElse();
  }
}

abstract class _SetDarkThemeEvent extends ThemeEvent {
  const factory _SetDarkThemeEvent() = _$_SetDarkThemeEvent;
  const _SetDarkThemeEvent._() : super._();
}

/// @nodoc
mixin _$ThemeState {
  ThemeData get theme => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeData theme) dark,
    required TResult Function(ThemeData theme) light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeData theme)? dark,
    TResult? Function(ThemeData theme)? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeData theme)? dark,
    TResult Function(ThemeData theme)? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DarkThemeState value) dark,
    required TResult Function(LightThemeState value) light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DarkThemeState value)? dark,
    TResult? Function(LightThemeState value)? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DarkThemeState value)? dark,
    TResult Function(LightThemeState value)? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeData theme});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DarkThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$DarkThemeStateCopyWith(
          _$DarkThemeState value, $Res Function(_$DarkThemeState) then) =
      __$$DarkThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData theme});
}

/// @nodoc
class __$$DarkThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$DarkThemeState>
    implements _$$DarkThemeStateCopyWith<$Res> {
  __$$DarkThemeStateCopyWithImpl(
      _$DarkThemeState _value, $Res Function(_$DarkThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$DarkThemeState(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$DarkThemeState extends DarkThemeState {
  const _$DarkThemeState({required this.theme}) : super._();

  @override
  final ThemeData theme;

  @override
  String toString() {
    return 'ThemeState.dark(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DarkThemeState &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DarkThemeStateCopyWith<_$DarkThemeState> get copyWith =>
      __$$DarkThemeStateCopyWithImpl<_$DarkThemeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeData theme) dark,
    required TResult Function(ThemeData theme) light,
  }) {
    return dark(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeData theme)? dark,
    TResult? Function(ThemeData theme)? light,
  }) {
    return dark?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeData theme)? dark,
    TResult Function(ThemeData theme)? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DarkThemeState value) dark,
    required TResult Function(LightThemeState value) light,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DarkThemeState value)? dark,
    TResult? Function(LightThemeState value)? light,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DarkThemeState value)? dark,
    TResult Function(LightThemeState value)? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class DarkThemeState extends ThemeState {
  const factory DarkThemeState({required final ThemeData theme}) =
      _$DarkThemeState;
  const DarkThemeState._() : super._();

  @override
  ThemeData get theme;
  @override
  @JsonKey(ignore: true)
  _$$DarkThemeStateCopyWith<_$DarkThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LightThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$LightThemeStateCopyWith(
          _$LightThemeState value, $Res Function(_$LightThemeState) then) =
      __$$LightThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData theme});
}

/// @nodoc
class __$$LightThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$LightThemeState>
    implements _$$LightThemeStateCopyWith<$Res> {
  __$$LightThemeStateCopyWithImpl(
      _$LightThemeState _value, $Res Function(_$LightThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$LightThemeState(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$LightThemeState extends LightThemeState {
  const _$LightThemeState({required this.theme}) : super._();

  @override
  final ThemeData theme;

  @override
  String toString() {
    return 'ThemeState.light(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LightThemeState &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LightThemeStateCopyWith<_$LightThemeState> get copyWith =>
      __$$LightThemeStateCopyWithImpl<_$LightThemeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeData theme) dark,
    required TResult Function(ThemeData theme) light,
  }) {
    return light(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeData theme)? dark,
    TResult? Function(ThemeData theme)? light,
  }) {
    return light?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeData theme)? dark,
    TResult Function(ThemeData theme)? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DarkThemeState value) dark,
    required TResult Function(LightThemeState value) light,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DarkThemeState value)? dark,
    TResult? Function(LightThemeState value)? light,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DarkThemeState value)? dark,
    TResult Function(LightThemeState value)? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class LightThemeState extends ThemeState {
  const factory LightThemeState({required final ThemeData theme}) =
      _$LightThemeState;
  const LightThemeState._() : super._();

  @override
  ThemeData get theme;
  @override
  @JsonKey(ignore: true)
  _$$LightThemeStateCopyWith<_$LightThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
