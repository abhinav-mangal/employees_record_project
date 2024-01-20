// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc_dart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> user, dynamic context)
        saveUser,
    required TResult Function() getUser,
    required TResult Function(
            Map<dynamic, dynamic> user, String id, dynamic context)
        updateUser,
    required TResult Function(String id, dynamic context) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult? Function()? getUser,
    TResult? Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult? Function(String id, dynamic context)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult Function()? getUser,
    TResult Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult Function(String id, dynamic context)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlocEventCopyWith<$Res> {
  factory $UserBlocEventCopyWith(
          UserBlocEvent value, $Res Function(UserBlocEvent) then) =
      _$UserBlocEventCopyWithImpl<$Res, UserBlocEvent>;
}

/// @nodoc
class _$UserBlocEventCopyWithImpl<$Res, $Val extends UserBlocEvent>
    implements $UserBlocEventCopyWith<$Res> {
  _$UserBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveUserImplCopyWith<$Res> {
  factory _$$SaveUserImplCopyWith(
          _$SaveUserImpl value, $Res Function(_$SaveUserImpl) then) =
      __$$SaveUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<dynamic, dynamic> user, dynamic context});
}

/// @nodoc
class __$$SaveUserImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$SaveUserImpl>
    implements _$$SaveUserImplCopyWith<$Res> {
  __$$SaveUserImplCopyWithImpl(
      _$SaveUserImpl _value, $Res Function(_$SaveUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? context = freezed,
  }) {
    return _then(_$SaveUserImpl(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      context: freezed == context ? _value.context! : context,
    ));
  }
}

/// @nodoc

class _$SaveUserImpl implements _SaveUser {
  const _$SaveUserImpl(final Map<dynamic, dynamic> user, {this.context})
      : _user = user;

  final Map<dynamic, dynamic> _user;
  @override
  Map<dynamic, dynamic> get user {
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  final dynamic context;

  @override
  String toString() {
    return 'UserBlocEvent.saveUser(user: $user, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserImpl &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserImplCopyWith<_$SaveUserImpl> get copyWith =>
      __$$SaveUserImplCopyWithImpl<_$SaveUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> user, dynamic context)
        saveUser,
    required TResult Function() getUser,
    required TResult Function(
            Map<dynamic, dynamic> user, String id, dynamic context)
        updateUser,
    required TResult Function(String id, dynamic context) deleteUser,
  }) {
    return saveUser(user, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult? Function()? getUser,
    TResult? Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult? Function(String id, dynamic context)? deleteUser,
  }) {
    return saveUser?.call(user, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult Function()? getUser,
    TResult Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult Function(String id, dynamic context)? deleteUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(user, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return saveUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class _SaveUser implements UserBlocEvent {
  const factory _SaveUser(final Map<dynamic, dynamic> user,
      {final dynamic context}) = _$SaveUserImpl;

  Map<dynamic, dynamic> get user;
  dynamic get context;
  @JsonKey(ignore: true)
  _$$SaveUserImplCopyWith<_$SaveUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'UserBlocEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> user, dynamic context)
        saveUser,
    required TResult Function() getUser,
    required TResult Function(
            Map<dynamic, dynamic> user, String id, dynamic context)
        updateUser,
    required TResult Function(String id, dynamic context) deleteUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult? Function()? getUser,
    TResult? Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult? Function(String id, dynamic context)? deleteUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult Function()? getUser,
    TResult Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult Function(String id, dynamic context)? deleteUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements UserBlocEvent {
  const factory _GetUser() = _$GetUserImpl;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<dynamic, dynamic> user, String id, dynamic context});
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? id = null,
    Object? context = freezed,
  }) {
    return _then(_$UpdateUserImpl(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      context: freezed == context ? _value.context! : context,
    ));
  }
}

/// @nodoc

class _$UpdateUserImpl implements _UpdateUser {
  const _$UpdateUserImpl(final Map<dynamic, dynamic> user, this.id,
      {this.context})
      : _user = user;

  final Map<dynamic, dynamic> _user;
  @override
  Map<dynamic, dynamic> get user {
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  final String id;
  @override
  final dynamic context;

  @override
  String toString() {
    return 'UserBlocEvent.updateUser(user: $user, id: $id, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_user),
      id,
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> user, dynamic context)
        saveUser,
    required TResult Function() getUser,
    required TResult Function(
            Map<dynamic, dynamic> user, String id, dynamic context)
        updateUser,
    required TResult Function(String id, dynamic context) deleteUser,
  }) {
    return updateUser(user, id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult? Function()? getUser,
    TResult? Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult? Function(String id, dynamic context)? deleteUser,
  }) {
    return updateUser?.call(user, id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult Function()? getUser,
    TResult Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult Function(String id, dynamic context)? deleteUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user, id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements UserBlocEvent {
  const factory _UpdateUser(final Map<dynamic, dynamic> user, final String id,
      {final dynamic context}) = _$UpdateUserImpl;

  Map<dynamic, dynamic> get user;
  String get id;
  dynamic get context;
  @JsonKey(ignore: true)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
          _$DeleteUserImpl value, $Res Function(_$DeleteUserImpl) then) =
      __$$DeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, dynamic context});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
      _$DeleteUserImpl _value, $Res Function(_$DeleteUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = freezed,
  }) {
    return _then(_$DeleteUserImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      context: freezed == context ? _value.context! : context,
    ));
  }
}

/// @nodoc

class _$DeleteUserImpl implements _DeleteUser {
  const _$DeleteUserImpl(this.id, {this.context});

  @override
  final String id;
  @override
  final dynamic context;

  @override
  String toString() {
    return 'UserBlocEvent.deleteUser(id: $id, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> user, dynamic context)
        saveUser,
    required TResult Function() getUser,
    required TResult Function(
            Map<dynamic, dynamic> user, String id, dynamic context)
        updateUser,
    required TResult Function(String id, dynamic context) deleteUser,
  }) {
    return deleteUser(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult? Function()? getUser,
    TResult? Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult? Function(String id, dynamic context)? deleteUser,
  }) {
    return deleteUser?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> user, dynamic context)? saveUser,
    TResult Function()? getUser,
    TResult Function(Map<dynamic, dynamic> user, String id, dynamic context)?
        updateUser,
    TResult Function(String id, dynamic context)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class _DeleteUser implements UserBlocEvent {
  const factory _DeleteUser(final String id, {final dynamic context}) =
      _$DeleteUserImpl;

  String get id;
  dynamic get context;
  @JsonKey(ignore: true)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<dynamic> get currentUser => throw _privateConstructorUsedError;
  List<dynamic> get previousUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBlocStateCopyWith<UserBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlocStateCopyWith<$Res> {
  factory $UserBlocStateCopyWith(
          UserBlocState value, $Res Function(UserBlocState) then) =
      _$UserBlocStateCopyWithImpl<$Res, UserBlocState>;
  @useResult
  $Res call(
      {bool isLoading, List<dynamic> currentUser, List<dynamic> previousUser});
}

/// @nodoc
class _$UserBlocStateCopyWithImpl<$Res, $Val extends UserBlocState>
    implements $UserBlocStateCopyWith<$Res> {
  _$UserBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentUser = null,
    Object? previousUser = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      previousUser: null == previousUser
          ? _value.previousUser
          : previousUser // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<dynamic> currentUser, List<dynamic> previousUser});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserBlocStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentUser = null,
    Object? previousUser = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUser: null == currentUser
          ? _value._currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      previousUser: null == previousUser
          ? _value._previousUser
          : previousUser // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required final List<dynamic> currentUser,
      required final List<dynamic> previousUser})
      : _currentUser = currentUser,
        _previousUser = previousUser;

  @override
  final bool isLoading;
  final List<dynamic> _currentUser;
  @override
  List<dynamic> get currentUser {
    if (_currentUser is EqualUnmodifiableListView) return _currentUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentUser);
  }

  final List<dynamic> _previousUser;
  @override
  List<dynamic> get previousUser {
    if (_previousUser is EqualUnmodifiableListView) return _previousUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousUser);
  }

  @override
  String toString() {
    return 'UserBlocState(isLoading: $isLoading, currentUser: $currentUser, previousUser: $previousUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._currentUser, _currentUser) &&
            const DeepCollectionEquality()
                .equals(other._previousUser, _previousUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_currentUser),
      const DeepCollectionEquality().hash(_previousUser));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UserBlocState {
  const factory _Initial(
      {required final bool isLoading,
      required final List<dynamic> currentUser,
      required final List<dynamic> previousUser}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  List<dynamic> get currentUser;
  @override
  List<dynamic> get previousUser;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
