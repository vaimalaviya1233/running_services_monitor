// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_mode_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkingModeStateModel {

 WorkingMode? get currentMode; bool get isRootAvailable; bool get isShizukuAvailable; bool get isDetecting;
/// Create a copy of WorkingModeStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingModeStateModelCopyWith<WorkingModeStateModel> get copyWith => _$WorkingModeStateModelCopyWithImpl<WorkingModeStateModel>(this as WorkingModeStateModel, _$identity);

  /// Serializes this WorkingModeStateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingModeStateModel&&(identical(other.currentMode, currentMode) || other.currentMode == currentMode)&&(identical(other.isRootAvailable, isRootAvailable) || other.isRootAvailable == isRootAvailable)&&(identical(other.isShizukuAvailable, isShizukuAvailable) || other.isShizukuAvailable == isShizukuAvailable)&&(identical(other.isDetecting, isDetecting) || other.isDetecting == isDetecting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentMode,isRootAvailable,isShizukuAvailable,isDetecting);

@override
String toString() {
  return 'WorkingModeStateModel(currentMode: $currentMode, isRootAvailable: $isRootAvailable, isShizukuAvailable: $isShizukuAvailable, isDetecting: $isDetecting)';
}


}

/// @nodoc
abstract mixin class $WorkingModeStateModelCopyWith<$Res>  {
  factory $WorkingModeStateModelCopyWith(WorkingModeStateModel value, $Res Function(WorkingModeStateModel) _then) = _$WorkingModeStateModelCopyWithImpl;
@useResult
$Res call({
 WorkingMode? currentMode, bool isRootAvailable, bool isShizukuAvailable, bool isDetecting
});




}
/// @nodoc
class _$WorkingModeStateModelCopyWithImpl<$Res>
    implements $WorkingModeStateModelCopyWith<$Res> {
  _$WorkingModeStateModelCopyWithImpl(this._self, this._then);

  final WorkingModeStateModel _self;
  final $Res Function(WorkingModeStateModel) _then;

/// Create a copy of WorkingModeStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentMode = freezed,Object? isRootAvailable = null,Object? isShizukuAvailable = null,Object? isDetecting = null,}) {
  return _then(_self.copyWith(
currentMode: freezed == currentMode ? _self.currentMode : currentMode // ignore: cast_nullable_to_non_nullable
as WorkingMode?,isRootAvailable: null == isRootAvailable ? _self.isRootAvailable : isRootAvailable // ignore: cast_nullable_to_non_nullable
as bool,isShizukuAvailable: null == isShizukuAvailable ? _self.isShizukuAvailable : isShizukuAvailable // ignore: cast_nullable_to_non_nullable
as bool,isDetecting: null == isDetecting ? _self.isDetecting : isDetecting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingModeStateModel].
extension WorkingModeStateModelPatterns on WorkingModeStateModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingModeStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingModeStateModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingModeStateModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkingModeStateModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingModeStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingModeStateModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkingMode? currentMode,  bool isRootAvailable,  bool isShizukuAvailable,  bool isDetecting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingModeStateModel() when $default != null:
return $default(_that.currentMode,_that.isRootAvailable,_that.isShizukuAvailable,_that.isDetecting);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkingMode? currentMode,  bool isRootAvailable,  bool isShizukuAvailable,  bool isDetecting)  $default,) {final _that = this;
switch (_that) {
case _WorkingModeStateModel():
return $default(_that.currentMode,_that.isRootAvailable,_that.isShizukuAvailable,_that.isDetecting);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkingMode? currentMode,  bool isRootAvailable,  bool isShizukuAvailable,  bool isDetecting)?  $default,) {final _that = this;
switch (_that) {
case _WorkingModeStateModel() when $default != null:
return $default(_that.currentMode,_that.isRootAvailable,_that.isShizukuAvailable,_that.isDetecting);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkingModeStateModel implements WorkingModeStateModel {
  const _WorkingModeStateModel({this.currentMode = null, this.isRootAvailable = false, this.isShizukuAvailable = false, this.isDetecting = false});
  factory _WorkingModeStateModel.fromJson(Map<String, dynamic> json) => _$WorkingModeStateModelFromJson(json);

@override@JsonKey() final  WorkingMode? currentMode;
@override@JsonKey() final  bool isRootAvailable;
@override@JsonKey() final  bool isShizukuAvailable;
@override@JsonKey() final  bool isDetecting;

/// Create a copy of WorkingModeStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingModeStateModelCopyWith<_WorkingModeStateModel> get copyWith => __$WorkingModeStateModelCopyWithImpl<_WorkingModeStateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkingModeStateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingModeStateModel&&(identical(other.currentMode, currentMode) || other.currentMode == currentMode)&&(identical(other.isRootAvailable, isRootAvailable) || other.isRootAvailable == isRootAvailable)&&(identical(other.isShizukuAvailable, isShizukuAvailable) || other.isShizukuAvailable == isShizukuAvailable)&&(identical(other.isDetecting, isDetecting) || other.isDetecting == isDetecting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentMode,isRootAvailable,isShizukuAvailable,isDetecting);

@override
String toString() {
  return 'WorkingModeStateModel(currentMode: $currentMode, isRootAvailable: $isRootAvailable, isShizukuAvailable: $isShizukuAvailable, isDetecting: $isDetecting)';
}


}

/// @nodoc
abstract mixin class _$WorkingModeStateModelCopyWith<$Res> implements $WorkingModeStateModelCopyWith<$Res> {
  factory _$WorkingModeStateModelCopyWith(_WorkingModeStateModel value, $Res Function(_WorkingModeStateModel) _then) = __$WorkingModeStateModelCopyWithImpl;
@override @useResult
$Res call({
 WorkingMode? currentMode, bool isRootAvailable, bool isShizukuAvailable, bool isDetecting
});




}
/// @nodoc
class __$WorkingModeStateModelCopyWithImpl<$Res>
    implements _$WorkingModeStateModelCopyWith<$Res> {
  __$WorkingModeStateModelCopyWithImpl(this._self, this._then);

  final _WorkingModeStateModel _self;
  final $Res Function(_WorkingModeStateModel) _then;

/// Create a copy of WorkingModeStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentMode = freezed,Object? isRootAvailable = null,Object? isShizukuAvailable = null,Object? isDetecting = null,}) {
  return _then(_WorkingModeStateModel(
currentMode: freezed == currentMode ? _self.currentMode : currentMode // ignore: cast_nullable_to_non_nullable
as WorkingMode?,isRootAvailable: null == isRootAvailable ? _self.isRootAvailable : isRootAvailable // ignore: cast_nullable_to_non_nullable
as bool,isShizukuAvailable: null == isShizukuAvailable ? _self.isShizukuAvailable : isShizukuAvailable // ignore: cast_nullable_to_non_nullable
as bool,isDetecting: null == isDetecting ? _self.isDetecting : isDetecting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
