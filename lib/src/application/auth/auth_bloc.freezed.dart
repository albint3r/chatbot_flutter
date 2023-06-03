// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleSingIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? googleSingIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleSingIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventGoogleSingIn value) googleSingIn,
    required TResult Function(_AuthEventSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventGoogleSingIn value)? googleSingIn,
    TResult? Function(_AuthEventSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventGoogleSingIn value)? googleSingIn,
    TResult Function(_AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthEventGoogleSingInCopyWith<$Res> {
  factory _$$_AuthEventGoogleSingInCopyWith(_$_AuthEventGoogleSingIn value,
          $Res Function(_$_AuthEventGoogleSingIn) then) =
      __$$_AuthEventGoogleSingInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEventGoogleSingInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventGoogleSingIn>
    implements _$$_AuthEventGoogleSingInCopyWith<$Res> {
  __$$_AuthEventGoogleSingInCopyWithImpl(_$_AuthEventGoogleSingIn _value,
      $Res Function(_$_AuthEventGoogleSingIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthEventGoogleSingIn implements _AuthEventGoogleSingIn {
  const _$_AuthEventGoogleSingIn();

  @override
  String toString() {
    return 'AuthEvent.googleSingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthEventGoogleSingIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleSingIn,
    required TResult Function() signOut,
  }) {
    return googleSingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? googleSingIn,
    TResult? Function()? signOut,
  }) {
    return googleSingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleSingIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (googleSingIn != null) {
      return googleSingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventGoogleSingIn value) googleSingIn,
    required TResult Function(_AuthEventSignOut value) signOut,
  }) {
    return googleSingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventGoogleSingIn value)? googleSingIn,
    TResult? Function(_AuthEventSignOut value)? signOut,
  }) {
    return googleSingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventGoogleSingIn value)? googleSingIn,
    TResult Function(_AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (googleSingIn != null) {
      return googleSingIn(this);
    }
    return orElse();
  }
}

abstract class _AuthEventGoogleSingIn implements AuthEvent {
  const factory _AuthEventGoogleSingIn() = _$_AuthEventGoogleSingIn;
}

/// @nodoc
abstract class _$$_AuthEventSignOutCopyWith<$Res> {
  factory _$$_AuthEventSignOutCopyWith(
          _$_AuthEventSignOut value, $Res Function(_$_AuthEventSignOut) then) =
      __$$_AuthEventSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEventSignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventSignOut>
    implements _$$_AuthEventSignOutCopyWith<$Res> {
  __$$_AuthEventSignOutCopyWithImpl(
      _$_AuthEventSignOut _value, $Res Function(_$_AuthEventSignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthEventSignOut implements _AuthEventSignOut {
  const _$_AuthEventSignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthEventSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleSingIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? googleSingIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleSingIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventGoogleSingIn value) googleSingIn,
    required TResult Function(_AuthEventSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventGoogleSingIn value)? googleSingIn,
    TResult? Function(_AuthEventSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventGoogleSingIn value)? googleSingIn,
    TResult Function(_AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _AuthEventSignOut implements AuthEvent {
  const factory _AuthEventSignOut() = _$_AuthEventSignOut;
}

/// @nodoc
mixin _$AuthState {
  User? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({User? user, bool isLoading, bool isAuthenticated});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? isAuthenticated = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, bool isLoading, bool isAuthenticated});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? isAuthenticated = null,
  }) {
    return _then(_$_AuthState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {this.user, required this.isLoading, required this.isAuthenticated})
      : super._();

  @override
  final User? user;
  @override
  final bool isLoading;
  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'AuthState(user: $user, isLoading: $isLoading, isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, isLoading, isAuthenticated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final User? user,
      required final bool isLoading,
      required final bool isAuthenticated}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  User? get user;
  @override
  bool get isLoading;
  @override
  bool get isAuthenticated;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
