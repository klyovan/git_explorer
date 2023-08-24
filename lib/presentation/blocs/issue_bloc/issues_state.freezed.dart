// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issues_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IssuesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Issue> issues) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Issue> issues)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Issue> issues)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IssuesStateInitial value) initial,
    required TResult Function(IssuesStateLoading value) loading,
    required TResult Function(IssuesStateError value) error,
    required TResult Function(IssuesStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IssuesStateInitial value)? initial,
    TResult? Function(IssuesStateLoading value)? loading,
    TResult? Function(IssuesStateError value)? error,
    TResult? Function(IssuesStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IssuesStateInitial value)? initial,
    TResult Function(IssuesStateLoading value)? loading,
    TResult Function(IssuesStateError value)? error,
    TResult Function(IssuesStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuesStateCopyWith<$Res> {
  factory $IssuesStateCopyWith(
          IssuesState value, $Res Function(IssuesState) then) =
      _$IssuesStateCopyWithImpl<$Res, IssuesState>;
}

/// @nodoc
class _$IssuesStateCopyWithImpl<$Res, $Val extends IssuesState>
    implements $IssuesStateCopyWith<$Res> {
  _$IssuesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IssuesStateInitialCopyWith<$Res> {
  factory _$$IssuesStateInitialCopyWith(_$IssuesStateInitial value,
          $Res Function(_$IssuesStateInitial) then) =
      __$$IssuesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IssuesStateInitialCopyWithImpl<$Res>
    extends _$IssuesStateCopyWithImpl<$Res, _$IssuesStateInitial>
    implements _$$IssuesStateInitialCopyWith<$Res> {
  __$$IssuesStateInitialCopyWithImpl(
      _$IssuesStateInitial _value, $Res Function(_$IssuesStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IssuesStateInitial implements IssuesStateInitial {
  const _$IssuesStateInitial();

  @override
  String toString() {
    return 'IssuesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IssuesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Issue> issues) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Issue> issues)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Issue> issues)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IssuesStateInitial value) initial,
    required TResult Function(IssuesStateLoading value) loading,
    required TResult Function(IssuesStateError value) error,
    required TResult Function(IssuesStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IssuesStateInitial value)? initial,
    TResult? Function(IssuesStateLoading value)? loading,
    TResult? Function(IssuesStateError value)? error,
    TResult? Function(IssuesStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IssuesStateInitial value)? initial,
    TResult Function(IssuesStateLoading value)? loading,
    TResult Function(IssuesStateError value)? error,
    TResult Function(IssuesStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class IssuesStateInitial implements IssuesState {
  const factory IssuesStateInitial() = _$IssuesStateInitial;
}

/// @nodoc
abstract class _$$IssuesStateLoadingCopyWith<$Res> {
  factory _$$IssuesStateLoadingCopyWith(_$IssuesStateLoading value,
          $Res Function(_$IssuesStateLoading) then) =
      __$$IssuesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IssuesStateLoadingCopyWithImpl<$Res>
    extends _$IssuesStateCopyWithImpl<$Res, _$IssuesStateLoading>
    implements _$$IssuesStateLoadingCopyWith<$Res> {
  __$$IssuesStateLoadingCopyWithImpl(
      _$IssuesStateLoading _value, $Res Function(_$IssuesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IssuesStateLoading implements IssuesStateLoading {
  const _$IssuesStateLoading();

  @override
  String toString() {
    return 'IssuesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IssuesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Issue> issues) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Issue> issues)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Issue> issues)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IssuesStateInitial value) initial,
    required TResult Function(IssuesStateLoading value) loading,
    required TResult Function(IssuesStateError value) error,
    required TResult Function(IssuesStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IssuesStateInitial value)? initial,
    TResult? Function(IssuesStateLoading value)? loading,
    TResult? Function(IssuesStateError value)? error,
    TResult? Function(IssuesStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IssuesStateInitial value)? initial,
    TResult Function(IssuesStateLoading value)? loading,
    TResult Function(IssuesStateError value)? error,
    TResult Function(IssuesStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class IssuesStateLoading implements IssuesState {
  const factory IssuesStateLoading() = _$IssuesStateLoading;
}

/// @nodoc
abstract class _$$IssuesStateErrorCopyWith<$Res> {
  factory _$$IssuesStateErrorCopyWith(
          _$IssuesStateError value, $Res Function(_$IssuesStateError) then) =
      __$$IssuesStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IssuesStateErrorCopyWithImpl<$Res>
    extends _$IssuesStateCopyWithImpl<$Res, _$IssuesStateError>
    implements _$$IssuesStateErrorCopyWith<$Res> {
  __$$IssuesStateErrorCopyWithImpl(
      _$IssuesStateError _value, $Res Function(_$IssuesStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IssuesStateError implements IssuesStateError {
  const _$IssuesStateError();

  @override
  String toString() {
    return 'IssuesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IssuesStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Issue> issues) success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Issue> issues)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Issue> issues)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IssuesStateInitial value) initial,
    required TResult Function(IssuesStateLoading value) loading,
    required TResult Function(IssuesStateError value) error,
    required TResult Function(IssuesStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IssuesStateInitial value)? initial,
    TResult? Function(IssuesStateLoading value)? loading,
    TResult? Function(IssuesStateError value)? error,
    TResult? Function(IssuesStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IssuesStateInitial value)? initial,
    TResult Function(IssuesStateLoading value)? loading,
    TResult Function(IssuesStateError value)? error,
    TResult Function(IssuesStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IssuesStateError implements IssuesState {
  const factory IssuesStateError() = _$IssuesStateError;
}

/// @nodoc
abstract class _$$IssuesStateSuccessCopyWith<$Res> {
  factory _$$IssuesStateSuccessCopyWith(_$IssuesStateSuccess value,
          $Res Function(_$IssuesStateSuccess) then) =
      __$$IssuesStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Issue> issues});
}

/// @nodoc
class __$$IssuesStateSuccessCopyWithImpl<$Res>
    extends _$IssuesStateCopyWithImpl<$Res, _$IssuesStateSuccess>
    implements _$$IssuesStateSuccessCopyWith<$Res> {
  __$$IssuesStateSuccessCopyWithImpl(
      _$IssuesStateSuccess _value, $Res Function(_$IssuesStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issues = null,
  }) {
    return _then(_$IssuesStateSuccess(
      issues: null == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
    ));
  }
}

/// @nodoc

class _$IssuesStateSuccess implements IssuesStateSuccess {
  const _$IssuesStateSuccess({required final List<Issue> issues})
      : _issues = issues;

  final List<Issue> _issues;
  @override
  List<Issue> get issues {
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  String toString() {
    return 'IssuesState.success(issues: $issues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuesStateSuccess &&
            const DeepCollectionEquality().equals(other._issues, _issues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_issues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuesStateSuccessCopyWith<_$IssuesStateSuccess> get copyWith =>
      __$$IssuesStateSuccessCopyWithImpl<_$IssuesStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Issue> issues) success,
  }) {
    return success(issues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Issue> issues)? success,
  }) {
    return success?.call(issues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Issue> issues)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(issues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IssuesStateInitial value) initial,
    required TResult Function(IssuesStateLoading value) loading,
    required TResult Function(IssuesStateError value) error,
    required TResult Function(IssuesStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IssuesStateInitial value)? initial,
    TResult? Function(IssuesStateLoading value)? loading,
    TResult? Function(IssuesStateError value)? error,
    TResult? Function(IssuesStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IssuesStateInitial value)? initial,
    TResult Function(IssuesStateLoading value)? loading,
    TResult Function(IssuesStateError value)? error,
    TResult Function(IssuesStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class IssuesStateSuccess implements IssuesState {
  const factory IssuesStateSuccess({required final List<Issue> issues}) =
      _$IssuesStateSuccess;

  List<Issue> get issues;
  @JsonKey(ignore: true)
  _$$IssuesStateSuccessCopyWith<_$IssuesStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
