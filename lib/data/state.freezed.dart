// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShapeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Color color) circle,
    required TResult Function(Color color) square,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Color color)? circle,
    TResult? Function(Color color)? square,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Color color)? circle,
    TResult Function(Color color)? square,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyShapeState value) empty,
    required TResult Function(CircleShapeState value) circle,
    required TResult Function(SquareShapeState value) square,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyShapeState value)? empty,
    TResult? Function(CircleShapeState value)? circle,
    TResult? Function(SquareShapeState value)? square,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyShapeState value)? empty,
    TResult Function(CircleShapeState value)? circle,
    TResult Function(SquareShapeState value)? square,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShapeStateCopyWith<$Res> {
  factory $ShapeStateCopyWith(
          ShapeState value, $Res Function(ShapeState) then) =
      _$ShapeStateCopyWithImpl<$Res, ShapeState>;
}

/// @nodoc
class _$ShapeStateCopyWithImpl<$Res, $Val extends ShapeState>
    implements $ShapeStateCopyWith<$Res> {
  _$ShapeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyShapeStateImplCopyWith<$Res> {
  factory _$$EmptyShapeStateImplCopyWith(_$EmptyShapeStateImpl value,
          $Res Function(_$EmptyShapeStateImpl) then) =
      __$$EmptyShapeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyShapeStateImplCopyWithImpl<$Res>
    extends _$ShapeStateCopyWithImpl<$Res, _$EmptyShapeStateImpl>
    implements _$$EmptyShapeStateImplCopyWith<$Res> {
  __$$EmptyShapeStateImplCopyWithImpl(
      _$EmptyShapeStateImpl _value, $Res Function(_$EmptyShapeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyShapeStateImpl extends EmptyShapeState {
  const _$EmptyShapeStateImpl() : super._();

  @override
  String toString() {
    return 'ShapeState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyShapeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Color color) circle,
    required TResult Function(Color color) square,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Color color)? circle,
    TResult? Function(Color color)? square,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Color color)? circle,
    TResult Function(Color color)? square,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyShapeState value) empty,
    required TResult Function(CircleShapeState value) circle,
    required TResult Function(SquareShapeState value) square,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyShapeState value)? empty,
    TResult? Function(CircleShapeState value)? circle,
    TResult? Function(SquareShapeState value)? square,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyShapeState value)? empty,
    TResult Function(CircleShapeState value)? circle,
    TResult Function(SquareShapeState value)? square,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyShapeState extends ShapeState {
  const factory EmptyShapeState() = _$EmptyShapeStateImpl;
  const EmptyShapeState._() : super._();
}

/// @nodoc
abstract class _$$CircleShapeStateImplCopyWith<$Res> {
  factory _$$CircleShapeStateImplCopyWith(_$CircleShapeStateImpl value,
          $Res Function(_$CircleShapeStateImpl) then) =
      __$$CircleShapeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$CircleShapeStateImplCopyWithImpl<$Res>
    extends _$ShapeStateCopyWithImpl<$Res, _$CircleShapeStateImpl>
    implements _$$CircleShapeStateImplCopyWith<$Res> {
  __$$CircleShapeStateImplCopyWithImpl(_$CircleShapeStateImpl _value,
      $Res Function(_$CircleShapeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$CircleShapeStateImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$CircleShapeStateImpl extends CircleShapeState {
  const _$CircleShapeStateImpl({required this.color}) : super._();

  @override
  final Color color;

  @override
  String toString() {
    return 'ShapeState.circle(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircleShapeStateImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CircleShapeStateImplCopyWith<_$CircleShapeStateImpl> get copyWith =>
      __$$CircleShapeStateImplCopyWithImpl<_$CircleShapeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Color color) circle,
    required TResult Function(Color color) square,
  }) {
    return circle(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Color color)? circle,
    TResult? Function(Color color)? square,
  }) {
    return circle?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Color color)? circle,
    TResult Function(Color color)? square,
    required TResult orElse(),
  }) {
    if (circle != null) {
      return circle(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyShapeState value) empty,
    required TResult Function(CircleShapeState value) circle,
    required TResult Function(SquareShapeState value) square,
  }) {
    return circle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyShapeState value)? empty,
    TResult? Function(CircleShapeState value)? circle,
    TResult? Function(SquareShapeState value)? square,
  }) {
    return circle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyShapeState value)? empty,
    TResult Function(CircleShapeState value)? circle,
    TResult Function(SquareShapeState value)? square,
    required TResult orElse(),
  }) {
    if (circle != null) {
      return circle(this);
    }
    return orElse();
  }
}

abstract class CircleShapeState extends ShapeState {
  const factory CircleShapeState({required final Color color}) =
      _$CircleShapeStateImpl;
  const CircleShapeState._() : super._();

  Color get color;
  @JsonKey(ignore: true)
  _$$CircleShapeStateImplCopyWith<_$CircleShapeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SquareShapeStateImplCopyWith<$Res> {
  factory _$$SquareShapeStateImplCopyWith(_$SquareShapeStateImpl value,
          $Res Function(_$SquareShapeStateImpl) then) =
      __$$SquareShapeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$SquareShapeStateImplCopyWithImpl<$Res>
    extends _$ShapeStateCopyWithImpl<$Res, _$SquareShapeStateImpl>
    implements _$$SquareShapeStateImplCopyWith<$Res> {
  __$$SquareShapeStateImplCopyWithImpl(_$SquareShapeStateImpl _value,
      $Res Function(_$SquareShapeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$SquareShapeStateImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$SquareShapeStateImpl extends SquareShapeState {
  const _$SquareShapeStateImpl({required this.color}) : super._();

  @override
  final Color color;

  @override
  String toString() {
    return 'ShapeState.square(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SquareShapeStateImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SquareShapeStateImplCopyWith<_$SquareShapeStateImpl> get copyWith =>
      __$$SquareShapeStateImplCopyWithImpl<_$SquareShapeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Color color) circle,
    required TResult Function(Color color) square,
  }) {
    return square(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Color color)? circle,
    TResult? Function(Color color)? square,
  }) {
    return square?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Color color)? circle,
    TResult Function(Color color)? square,
    required TResult orElse(),
  }) {
    if (square != null) {
      return square(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyShapeState value) empty,
    required TResult Function(CircleShapeState value) circle,
    required TResult Function(SquareShapeState value) square,
  }) {
    return square(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyShapeState value)? empty,
    TResult? Function(CircleShapeState value)? circle,
    TResult? Function(SquareShapeState value)? square,
  }) {
    return square?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyShapeState value)? empty,
    TResult Function(CircleShapeState value)? circle,
    TResult Function(SquareShapeState value)? square,
    required TResult orElse(),
  }) {
    if (square != null) {
      return square(this);
    }
    return orElse();
  }
}

abstract class SquareShapeState extends ShapeState {
  const factory SquareShapeState({required final Color color}) =
      _$SquareShapeStateImpl;
  const SquareShapeState._() : super._();

  Color get color;
  @JsonKey(ignore: true)
  _$$SquareShapeStateImplCopyWith<_$SquareShapeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
