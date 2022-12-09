// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
    required TResult Function() refreshLocal,
    required TResult Function() startListenDio,
    required TResult Function() sendDeviceToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(UserDTO user)? logining,
    TResult? Function()? exiting,
    TResult? Function()? refreshLocal,
    TResult? Function()? startListenDio,
    TResult? Function()? sendDeviceToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    TResult Function()? refreshLocal,
    TResult Function()? startListenDio,
    TResult Function()? sendDeviceToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
    required TResult Function(_RefreshLocal value) refreshLocal,
    required TResult Function(_StartListenDio value) startListenDio,
    required TResult Function(_SendDeviceToken value) sendDeviceToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
    TResult? Function(_RefreshLocal value)? refreshLocal,
    TResult? Function(_StartListenDio value)? startListenDio,
    TResult? Function(_SendDeviceToken value)? sendDeviceToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    TResult Function(_RefreshLocal value)? refreshLocal,
    TResult Function(_StartListenDio value)? startListenDio,
    TResult Function(_SendDeviceToken value)? sendDeviceToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckAuthCopyWith<$Res> {
  factory _$$_CheckAuthCopyWith(
          _$_CheckAuth value, $Res Function(_$_CheckAuth) then) =
      __$$_CheckAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_CheckAuth>
    implements _$$_CheckAuthCopyWith<$Res> {
  __$$_CheckAuthCopyWithImpl(
      _$_CheckAuth _value, $Res Function(_$_CheckAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckAuth implements _CheckAuth {
  const _$_CheckAuth();

  @override
  String toString() {
    return 'AppEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
    required TResult Function() refreshLocal,
    required TResult Function() startListenDio,
    required TResult Function() sendDeviceToken,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(UserDTO user)? logining,
    TResult? Function()? exiting,
    TResult? Function()? refreshLocal,
    TResult? Function()? startListenDio,
    TResult? Function()? sendDeviceToken,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    TResult Function()? refreshLocal,
    TResult Function()? startListenDio,
    TResult Function()? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
    required TResult Function(_RefreshLocal value) refreshLocal,
    required TResult Function(_StartListenDio value) startListenDio,
    required TResult Function(_SendDeviceToken value) sendDeviceToken,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
    TResult? Function(_RefreshLocal value)? refreshLocal,
    TResult? Function(_StartListenDio value)? startListenDio,
    TResult? Function(_SendDeviceToken value)? sendDeviceToken,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    TResult Function(_RefreshLocal value)? refreshLocal,
    TResult Function(_StartListenDio value)? startListenDio,
    TResult Function(_SendDeviceToken value)? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AppEvent {
  const factory _CheckAuth() = _$_CheckAuth;
}

/// @nodoc
abstract class _$$_LoginingCopyWith<$Res> {
  factory _$$_LoginingCopyWith(
          _$_Logining value, $Res Function(_$_Logining) then) =
      __$$_LoginingCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDTO user});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginingCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Logining>
    implements _$$_LoginingCopyWith<$Res> {
  __$$_LoginingCopyWithImpl(
      _$_Logining _value, $Res Function(_$_Logining) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Logining(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Logining implements _Logining {
  const _$_Logining({required this.user});

  @override
  final UserDTO user;

  @override
  String toString() {
    return 'AppEvent.logining(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logining &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginingCopyWith<_$_Logining> get copyWith =>
      __$$_LoginingCopyWithImpl<_$_Logining>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
    required TResult Function() refreshLocal,
    required TResult Function() startListenDio,
    required TResult Function() sendDeviceToken,
  }) {
    return logining(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(UserDTO user)? logining,
    TResult? Function()? exiting,
    TResult? Function()? refreshLocal,
    TResult? Function()? startListenDio,
    TResult? Function()? sendDeviceToken,
  }) {
    return logining?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    TResult Function()? refreshLocal,
    TResult Function()? startListenDio,
    TResult Function()? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (logining != null) {
      return logining(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
    required TResult Function(_RefreshLocal value) refreshLocal,
    required TResult Function(_StartListenDio value) startListenDio,
    required TResult Function(_SendDeviceToken value) sendDeviceToken,
  }) {
    return logining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
    TResult? Function(_RefreshLocal value)? refreshLocal,
    TResult? Function(_StartListenDio value)? startListenDio,
    TResult? Function(_SendDeviceToken value)? sendDeviceToken,
  }) {
    return logining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    TResult Function(_RefreshLocal value)? refreshLocal,
    TResult Function(_StartListenDio value)? startListenDio,
    TResult Function(_SendDeviceToken value)? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (logining != null) {
      return logining(this);
    }
    return orElse();
  }
}

abstract class _Logining implements AppEvent {
  const factory _Logining({required final UserDTO user}) = _$_Logining;

  UserDTO get user;
  @JsonKey(ignore: true)
  _$$_LoginingCopyWith<_$_Logining> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExitingCopyWith<$Res> {
  factory _$$_ExitingCopyWith(
          _$_Exiting value, $Res Function(_$_Exiting) then) =
      __$$_ExitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExitingCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Exiting>
    implements _$$_ExitingCopyWith<$Res> {
  __$$_ExitingCopyWithImpl(_$_Exiting _value, $Res Function(_$_Exiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Exiting implements _Exiting {
  const _$_Exiting();

  @override
  String toString() {
    return 'AppEvent.exiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Exiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
    required TResult Function() refreshLocal,
    required TResult Function() startListenDio,
    required TResult Function() sendDeviceToken,
  }) {
    return exiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(UserDTO user)? logining,
    TResult? Function()? exiting,
    TResult? Function()? refreshLocal,
    TResult? Function()? startListenDio,
    TResult? Function()? sendDeviceToken,
  }) {
    return exiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    TResult Function()? refreshLocal,
    TResult Function()? startListenDio,
    TResult Function()? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (exiting != null) {
      return exiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
    required TResult Function(_RefreshLocal value) refreshLocal,
    required TResult Function(_StartListenDio value) startListenDio,
    required TResult Function(_SendDeviceToken value) sendDeviceToken,
  }) {
    return exiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
    TResult? Function(_RefreshLocal value)? refreshLocal,
    TResult? Function(_StartListenDio value)? startListenDio,
    TResult? Function(_SendDeviceToken value)? sendDeviceToken,
  }) {
    return exiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    TResult Function(_RefreshLocal value)? refreshLocal,
    TResult Function(_StartListenDio value)? startListenDio,
    TResult Function(_SendDeviceToken value)? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (exiting != null) {
      return exiting(this);
    }
    return orElse();
  }
}

abstract class _Exiting implements AppEvent {
  const factory _Exiting() = _$_Exiting;
}

/// @nodoc
abstract class _$$_RefreshLocalCopyWith<$Res> {
  factory _$$_RefreshLocalCopyWith(
          _$_RefreshLocal value, $Res Function(_$_RefreshLocal) then) =
      __$$_RefreshLocalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshLocalCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_RefreshLocal>
    implements _$$_RefreshLocalCopyWith<$Res> {
  __$$_RefreshLocalCopyWithImpl(
      _$_RefreshLocal _value, $Res Function(_$_RefreshLocal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshLocal implements _RefreshLocal {
  const _$_RefreshLocal();

  @override
  String toString() {
    return 'AppEvent.refreshLocal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshLocal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
    required TResult Function() refreshLocal,
    required TResult Function() startListenDio,
    required TResult Function() sendDeviceToken,
  }) {
    return refreshLocal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(UserDTO user)? logining,
    TResult? Function()? exiting,
    TResult? Function()? refreshLocal,
    TResult? Function()? startListenDio,
    TResult? Function()? sendDeviceToken,
  }) {
    return refreshLocal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    TResult Function()? refreshLocal,
    TResult Function()? startListenDio,
    TResult Function()? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (refreshLocal != null) {
      return refreshLocal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
    required TResult Function(_RefreshLocal value) refreshLocal,
    required TResult Function(_StartListenDio value) startListenDio,
    required TResult Function(_SendDeviceToken value) sendDeviceToken,
  }) {
    return refreshLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
    TResult? Function(_RefreshLocal value)? refreshLocal,
    TResult? Function(_StartListenDio value)? startListenDio,
    TResult? Function(_SendDeviceToken value)? sendDeviceToken,
  }) {
    return refreshLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    TResult Function(_RefreshLocal value)? refreshLocal,
    TResult Function(_StartListenDio value)? startListenDio,
    TResult Function(_SendDeviceToken value)? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (refreshLocal != null) {
      return refreshLocal(this);
    }
    return orElse();
  }
}

abstract class _RefreshLocal implements AppEvent {
  const factory _RefreshLocal() = _$_RefreshLocal;
}

/// @nodoc
abstract class _$$_StartListenDioCopyWith<$Res> {
  factory _$$_StartListenDioCopyWith(
          _$_StartListenDio value, $Res Function(_$_StartListenDio) then) =
      __$$_StartListenDioCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartListenDioCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_StartListenDio>
    implements _$$_StartListenDioCopyWith<$Res> {
  __$$_StartListenDioCopyWithImpl(
      _$_StartListenDio _value, $Res Function(_$_StartListenDio) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartListenDio implements _StartListenDio {
  const _$_StartListenDio();

  @override
  String toString() {
    return 'AppEvent.startListenDio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartListenDio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
    required TResult Function() refreshLocal,
    required TResult Function() startListenDio,
    required TResult Function() sendDeviceToken,
  }) {
    return startListenDio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(UserDTO user)? logining,
    TResult? Function()? exiting,
    TResult? Function()? refreshLocal,
    TResult? Function()? startListenDio,
    TResult? Function()? sendDeviceToken,
  }) {
    return startListenDio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    TResult Function()? refreshLocal,
    TResult Function()? startListenDio,
    TResult Function()? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (startListenDio != null) {
      return startListenDio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
    required TResult Function(_RefreshLocal value) refreshLocal,
    required TResult Function(_StartListenDio value) startListenDio,
    required TResult Function(_SendDeviceToken value) sendDeviceToken,
  }) {
    return startListenDio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
    TResult? Function(_RefreshLocal value)? refreshLocal,
    TResult? Function(_StartListenDio value)? startListenDio,
    TResult? Function(_SendDeviceToken value)? sendDeviceToken,
  }) {
    return startListenDio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    TResult Function(_RefreshLocal value)? refreshLocal,
    TResult Function(_StartListenDio value)? startListenDio,
    TResult Function(_SendDeviceToken value)? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (startListenDio != null) {
      return startListenDio(this);
    }
    return orElse();
  }
}

abstract class _StartListenDio implements AppEvent {
  const factory _StartListenDio() = _$_StartListenDio;
}

/// @nodoc
abstract class _$$_SendDeviceTokenCopyWith<$Res> {
  factory _$$_SendDeviceTokenCopyWith(
          _$_SendDeviceToken value, $Res Function(_$_SendDeviceToken) then) =
      __$$_SendDeviceTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendDeviceTokenCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_SendDeviceToken>
    implements _$$_SendDeviceTokenCopyWith<$Res> {
  __$$_SendDeviceTokenCopyWithImpl(
      _$_SendDeviceToken _value, $Res Function(_$_SendDeviceToken) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendDeviceToken implements _SendDeviceToken {
  const _$_SendDeviceToken();

  @override
  String toString() {
    return 'AppEvent.sendDeviceToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendDeviceToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
    required TResult Function() refreshLocal,
    required TResult Function() startListenDio,
    required TResult Function() sendDeviceToken,
  }) {
    return sendDeviceToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(UserDTO user)? logining,
    TResult? Function()? exiting,
    TResult? Function()? refreshLocal,
    TResult? Function()? startListenDio,
    TResult? Function()? sendDeviceToken,
  }) {
    return sendDeviceToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    TResult Function()? refreshLocal,
    TResult Function()? startListenDio,
    TResult Function()? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (sendDeviceToken != null) {
      return sendDeviceToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
    required TResult Function(_RefreshLocal value) refreshLocal,
    required TResult Function(_StartListenDio value) startListenDio,
    required TResult Function(_SendDeviceToken value) sendDeviceToken,
  }) {
    return sendDeviceToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
    TResult? Function(_RefreshLocal value)? refreshLocal,
    TResult? Function(_StartListenDio value)? startListenDio,
    TResult? Function(_SendDeviceToken value)? sendDeviceToken,
  }) {
    return sendDeviceToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    TResult Function(_RefreshLocal value)? refreshLocal,
    TResult Function(_StartListenDio value)? startListenDio,
    TResult Function(_SendDeviceToken value)? sendDeviceToken,
    required TResult orElse(),
  }) {
    if (sendDeviceToken != null) {
      return sendDeviceToken(this);
    }
    return orElse();
  }
}

abstract class _SendDeviceToken implements AppEvent {
  const factory _SendDeviceToken() = _$_SendDeviceToken;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function(UserDTO user)? inAppState,
    TResult? Function(String message)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'AppState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function(UserDTO user)? inAppState,
    TResult? Function(String message)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AppState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_NotAuthorizedStateCopyWith<$Res> {
  factory _$$_NotAuthorizedStateCopyWith(_$_NotAuthorizedState value,
          $Res Function(_$_NotAuthorizedState) then) =
      __$$_NotAuthorizedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotAuthorizedStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_NotAuthorizedState>
    implements _$$_NotAuthorizedStateCopyWith<$Res> {
  __$$_NotAuthorizedStateCopyWithImpl(
      _$_NotAuthorizedState _value, $Res Function(_$_NotAuthorizedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotAuthorizedState implements _NotAuthorizedState {
  const _$_NotAuthorizedState();

  @override
  String toString() {
    return 'AppState.notAuthorizedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotAuthorizedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return notAuthorizedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function(UserDTO user)? inAppState,
    TResult? Function(String message)? errorState,
  }) {
    return notAuthorizedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (notAuthorizedState != null) {
      return notAuthorizedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return notAuthorizedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return notAuthorizedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (notAuthorizedState != null) {
      return notAuthorizedState(this);
    }
    return orElse();
  }
}

abstract class _NotAuthorizedState implements AppState {
  const factory _NotAuthorizedState() = _$_NotAuthorizedState;
}

/// @nodoc
abstract class _$$_InAppStateCopyWith<$Res> {
  factory _$$_InAppStateCopyWith(
          _$_InAppState value, $Res Function(_$_InAppState) then) =
      __$$_InAppStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDTO user});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$$_InAppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_InAppState>
    implements _$$_InAppStateCopyWith<$Res> {
  __$$_InAppStateCopyWithImpl(
      _$_InAppState _value, $Res Function(_$_InAppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_InAppState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_InAppState implements _InAppState {
  const _$_InAppState({required this.user});

  @override
  final UserDTO user;

  @override
  String toString() {
    return 'AppState.inAppState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InAppState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InAppStateCopyWith<_$_InAppState> get copyWith =>
      __$$_InAppStateCopyWithImpl<_$_InAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return inAppState(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function(UserDTO user)? inAppState,
    TResult? Function(String message)? errorState,
  }) {
    return inAppState?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (inAppState != null) {
      return inAppState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return inAppState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return inAppState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (inAppState != null) {
      return inAppState(this);
    }
    return orElse();
  }
}

abstract class _InAppState implements AppState {
  const factory _InAppState({required final UserDTO user}) = _$_InAppState;

  UserDTO get user;
  @JsonKey(ignore: true)
  _$$_InAppStateCopyWith<_$_InAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppState.errorState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function(UserDTO user)? inAppState,
    TResult? Function(String message)? errorState,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AppState {
  const factory _ErrorState({required final String message}) = _$_ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
