// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_mode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkingModeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingModeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkingModeEvent()';
}


}

/// @nodoc
class $WorkingModeEventCopyWith<$Res>  {
$WorkingModeEventCopyWith(WorkingModeEvent _, $Res Function(WorkingModeEvent) __);
}


/// Adds pattern-matching-related methods to [WorkingModeEvent].
extension WorkingModeEventPatterns on WorkingModeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DetectModes value)?  detectModes,TResult Function( _SetMode value)?  setMode,TResult Function( _RefreshStatus value)?  refreshStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetectModes() when detectModes != null:
return detectModes(_that);case _SetMode() when setMode != null:
return setMode(_that);case _RefreshStatus() when refreshStatus != null:
return refreshStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DetectModes value)  detectModes,required TResult Function( _SetMode value)  setMode,required TResult Function( _RefreshStatus value)  refreshStatus,}){
final _that = this;
switch (_that) {
case _DetectModes():
return detectModes(_that);case _SetMode():
return setMode(_that);case _RefreshStatus():
return refreshStatus(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DetectModes value)?  detectModes,TResult? Function( _SetMode value)?  setMode,TResult? Function( _RefreshStatus value)?  refreshStatus,}){
final _that = this;
switch (_that) {
case _DetectModes() when detectModes != null:
return detectModes(_that);case _SetMode() when setMode != null:
return setMode(_that);case _RefreshStatus() when refreshStatus != null:
return refreshStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  detectModes,TResult Function( WorkingMode mode)?  setMode,TResult Function()?  refreshStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetectModes() when detectModes != null:
return detectModes();case _SetMode() when setMode != null:
return setMode(_that.mode);case _RefreshStatus() when refreshStatus != null:
return refreshStatus();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  detectModes,required TResult Function( WorkingMode mode)  setMode,required TResult Function()  refreshStatus,}) {final _that = this;
switch (_that) {
case _DetectModes():
return detectModes();case _SetMode():
return setMode(_that.mode);case _RefreshStatus():
return refreshStatus();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  detectModes,TResult? Function( WorkingMode mode)?  setMode,TResult? Function()?  refreshStatus,}) {final _that = this;
switch (_that) {
case _DetectModes() when detectModes != null:
return detectModes();case _SetMode() when setMode != null:
return setMode(_that.mode);case _RefreshStatus() when refreshStatus != null:
return refreshStatus();case _:
  return null;

}
}

}

/// @nodoc


class _DetectModes implements WorkingModeEvent {
  const _DetectModes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetectModes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkingModeEvent.detectModes()';
}


}




/// @nodoc


class _SetMode implements WorkingModeEvent {
  const _SetMode(this.mode);
  

 final  WorkingMode mode;

/// Create a copy of WorkingModeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetModeCopyWith<_SetMode> get copyWith => __$SetModeCopyWithImpl<_SetMode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetMode&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'WorkingModeEvent.setMode(mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$SetModeCopyWith<$Res> implements $WorkingModeEventCopyWith<$Res> {
  factory _$SetModeCopyWith(_SetMode value, $Res Function(_SetMode) _then) = __$SetModeCopyWithImpl;
@useResult
$Res call({
 WorkingMode mode
});




}
/// @nodoc
class __$SetModeCopyWithImpl<$Res>
    implements _$SetModeCopyWith<$Res> {
  __$SetModeCopyWithImpl(this._self, this._then);

  final _SetMode _self;
  final $Res Function(_SetMode) _then;

/// Create a copy of WorkingModeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mode = null,}) {
  return _then(_SetMode(
null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as WorkingMode,
  ));
}


}

/// @nodoc


class _RefreshStatus implements WorkingModeEvent {
  const _RefreshStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkingModeEvent.refreshStatus()';
}


}




/// @nodoc
mixin _$WorkingModeState {

 WorkingModeStateModel get value;
/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingModeStateCopyWith<WorkingModeState> get copyWith => _$WorkingModeStateCopyWithImpl<WorkingModeState>(this as WorkingModeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingModeState&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WorkingModeState(value: $value)';
}


}

/// @nodoc
abstract mixin class $WorkingModeStateCopyWith<$Res>  {
  factory $WorkingModeStateCopyWith(WorkingModeState value, $Res Function(WorkingModeState) _then) = _$WorkingModeStateCopyWithImpl;
@useResult
$Res call({
 WorkingModeStateModel value
});


$WorkingModeStateModelCopyWith<$Res> get value;

}
/// @nodoc
class _$WorkingModeStateCopyWithImpl<$Res>
    implements $WorkingModeStateCopyWith<$Res> {
  _$WorkingModeStateCopyWithImpl(this._self, this._then);

  final WorkingModeState _self;
  final $Res Function(WorkingModeState) _then;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as WorkingModeStateModel,
  ));
}
/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingModeStateModelCopyWith<$Res> get value {
  
  return $WorkingModeStateModelCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorkingModeState].
extension WorkingModeStatePatterns on WorkingModeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Detecting value)?  detecting,TResult Function( _Ready value)?  ready,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Detecting() when detecting != null:
return detecting(_that);case _Ready() when ready != null:
return ready(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Detecting value)  detecting,required TResult Function( _Ready value)  ready,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Detecting():
return detecting(_that);case _Ready():
return ready(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Detecting value)?  detecting,TResult? Function( _Ready value)?  ready,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Detecting() when detecting != null:
return detecting(_that);case _Ready() when ready != null:
return ready(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( WorkingModeStateModel value)?  initial,TResult Function( WorkingModeStateModel value)?  detecting,TResult Function( WorkingModeStateModel value)?  ready,TResult Function( WorkingModeStateModel value,  String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.value);case _Detecting() when detecting != null:
return detecting(_that.value);case _Ready() when ready != null:
return ready(_that.value);case _Error() when error != null:
return error(_that.value,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( WorkingModeStateModel value)  initial,required TResult Function( WorkingModeStateModel value)  detecting,required TResult Function( WorkingModeStateModel value)  ready,required TResult Function( WorkingModeStateModel value,  String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.value);case _Detecting():
return detecting(_that.value);case _Ready():
return ready(_that.value);case _Error():
return error(_that.value,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( WorkingModeStateModel value)?  initial,TResult? Function( WorkingModeStateModel value)?  detecting,TResult? Function( WorkingModeStateModel value)?  ready,TResult? Function( WorkingModeStateModel value,  String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.value);case _Detecting() when detecting != null:
return detecting(_that.value);case _Ready() when ready != null:
return ready(_that.value);case _Error() when error != null:
return error(_that.value,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements WorkingModeState {
  const _Initial(this.value);
  

@override final  WorkingModeStateModel value;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WorkingModeState.initial(value: $value)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $WorkingModeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 WorkingModeStateModel value
});


@override $WorkingModeStateModelCopyWith<$Res> get value;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Initial(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as WorkingModeStateModel,
  ));
}

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingModeStateModelCopyWith<$Res> get value {
  
  return $WorkingModeStateModelCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

/// @nodoc


class _Detecting implements WorkingModeState {
  const _Detecting(this.value);
  

@override final  WorkingModeStateModel value;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetectingCopyWith<_Detecting> get copyWith => __$DetectingCopyWithImpl<_Detecting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Detecting&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WorkingModeState.detecting(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DetectingCopyWith<$Res> implements $WorkingModeStateCopyWith<$Res> {
  factory _$DetectingCopyWith(_Detecting value, $Res Function(_Detecting) _then) = __$DetectingCopyWithImpl;
@override @useResult
$Res call({
 WorkingModeStateModel value
});


@override $WorkingModeStateModelCopyWith<$Res> get value;

}
/// @nodoc
class __$DetectingCopyWithImpl<$Res>
    implements _$DetectingCopyWith<$Res> {
  __$DetectingCopyWithImpl(this._self, this._then);

  final _Detecting _self;
  final $Res Function(_Detecting) _then;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Detecting(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as WorkingModeStateModel,
  ));
}

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingModeStateModelCopyWith<$Res> get value {
  
  return $WorkingModeStateModelCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

/// @nodoc


class _Ready implements WorkingModeState {
  const _Ready(this.value);
  

@override final  WorkingModeStateModel value;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WorkingModeState.ready(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $WorkingModeStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@override @useResult
$Res call({
 WorkingModeStateModel value
});


@override $WorkingModeStateModelCopyWith<$Res> get value;

}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Ready(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as WorkingModeStateModel,
  ));
}

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingModeStateModelCopyWith<$Res> get value {
  
  return $WorkingModeStateModelCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

/// @nodoc


class _Error implements WorkingModeState {
  const _Error(this.value, this.message);
  

@override final  WorkingModeStateModel value;
 final  String message;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.value, value) || other.value == value)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,value,message);

@override
String toString() {
  return 'WorkingModeState.error(value: $value, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $WorkingModeStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@override @useResult
$Res call({
 WorkingModeStateModel value, String message
});


@override $WorkingModeStateModelCopyWith<$Res> get value;

}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? message = null,}) {
  return _then(_Error(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as WorkingModeStateModel,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WorkingModeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingModeStateModelCopyWith<$Res> get value {
  
  return $WorkingModeStateModelCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

// dart format on
