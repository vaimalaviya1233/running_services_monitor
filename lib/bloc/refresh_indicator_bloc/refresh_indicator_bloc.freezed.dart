// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_indicator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefreshIndicatorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshIndicatorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshIndicatorEvent()';
}


}

/// @nodoc
class $RefreshIndicatorEventCopyWith<$Res>  {
$RefreshIndicatorEventCopyWith(RefreshIndicatorEvent _, $Res Function(RefreshIndicatorEvent) __);
}


/// Adds pattern-matching-related methods to [RefreshIndicatorEvent].
extension RefreshIndicatorEventPatterns on RefreshIndicatorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StartDrag value)?  startDrag,TResult Function( _UpdateDrag value)?  updateDrag,TResult Function( _EndDrag value)?  endDrag,TResult Function( _Overscroll value)?  overscroll,TResult Function( _TriggerRefresh value)?  triggerRefresh,TResult Function( _RefreshComplete value)?  refreshComplete,TResult Function( _DismissComplete value)?  dismissComplete,TResult Function( _Reset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartDrag() when startDrag != null:
return startDrag(_that);case _UpdateDrag() when updateDrag != null:
return updateDrag(_that);case _EndDrag() when endDrag != null:
return endDrag(_that);case _Overscroll() when overscroll != null:
return overscroll(_that);case _TriggerRefresh() when triggerRefresh != null:
return triggerRefresh(_that);case _RefreshComplete() when refreshComplete != null:
return refreshComplete(_that);case _DismissComplete() when dismissComplete != null:
return dismissComplete(_that);case _Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StartDrag value)  startDrag,required TResult Function( _UpdateDrag value)  updateDrag,required TResult Function( _EndDrag value)  endDrag,required TResult Function( _Overscroll value)  overscroll,required TResult Function( _TriggerRefresh value)  triggerRefresh,required TResult Function( _RefreshComplete value)  refreshComplete,required TResult Function( _DismissComplete value)  dismissComplete,required TResult Function( _Reset value)  reset,}){
final _that = this;
switch (_that) {
case _StartDrag():
return startDrag(_that);case _UpdateDrag():
return updateDrag(_that);case _EndDrag():
return endDrag(_that);case _Overscroll():
return overscroll(_that);case _TriggerRefresh():
return triggerRefresh(_that);case _RefreshComplete():
return refreshComplete(_that);case _DismissComplete():
return dismissComplete(_that);case _Reset():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StartDrag value)?  startDrag,TResult? Function( _UpdateDrag value)?  updateDrag,TResult? Function( _EndDrag value)?  endDrag,TResult? Function( _Overscroll value)?  overscroll,TResult? Function( _TriggerRefresh value)?  triggerRefresh,TResult? Function( _RefreshComplete value)?  refreshComplete,TResult? Function( _DismissComplete value)?  dismissComplete,TResult? Function( _Reset value)?  reset,}){
final _that = this;
switch (_that) {
case _StartDrag() when startDrag != null:
return startDrag(_that);case _UpdateDrag() when updateDrag != null:
return updateDrag(_that);case _EndDrag() when endDrag != null:
return endDrag(_that);case _Overscroll() when overscroll != null:
return overscroll(_that);case _TriggerRefresh() when triggerRefresh != null:
return triggerRefresh(_that);case _RefreshComplete() when refreshComplete != null:
return refreshComplete(_that);case _DismissComplete() when dismissComplete != null:
return dismissComplete(_that);case _Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  startDrag,TResult Function( double delta)?  updateDrag,TResult Function()?  endDrag,TResult Function( double amount)?  overscroll,TResult Function()?  triggerRefresh,TResult Function()?  refreshComplete,TResult Function()?  dismissComplete,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartDrag() when startDrag != null:
return startDrag();case _UpdateDrag() when updateDrag != null:
return updateDrag(_that.delta);case _EndDrag() when endDrag != null:
return endDrag();case _Overscroll() when overscroll != null:
return overscroll(_that.amount);case _TriggerRefresh() when triggerRefresh != null:
return triggerRefresh();case _RefreshComplete() when refreshComplete != null:
return refreshComplete();case _DismissComplete() when dismissComplete != null:
return dismissComplete();case _Reset() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  startDrag,required TResult Function( double delta)  updateDrag,required TResult Function()  endDrag,required TResult Function( double amount)  overscroll,required TResult Function()  triggerRefresh,required TResult Function()  refreshComplete,required TResult Function()  dismissComplete,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _StartDrag():
return startDrag();case _UpdateDrag():
return updateDrag(_that.delta);case _EndDrag():
return endDrag();case _Overscroll():
return overscroll(_that.amount);case _TriggerRefresh():
return triggerRefresh();case _RefreshComplete():
return refreshComplete();case _DismissComplete():
return dismissComplete();case _Reset():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  startDrag,TResult? Function( double delta)?  updateDrag,TResult? Function()?  endDrag,TResult? Function( double amount)?  overscroll,TResult? Function()?  triggerRefresh,TResult? Function()?  refreshComplete,TResult? Function()?  dismissComplete,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _StartDrag() when startDrag != null:
return startDrag();case _UpdateDrag() when updateDrag != null:
return updateDrag(_that.delta);case _EndDrag() when endDrag != null:
return endDrag();case _Overscroll() when overscroll != null:
return overscroll(_that.amount);case _TriggerRefresh() when triggerRefresh != null:
return triggerRefresh();case _RefreshComplete() when refreshComplete != null:
return refreshComplete();case _DismissComplete() when dismissComplete != null:
return dismissComplete();case _Reset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _StartDrag implements RefreshIndicatorEvent {
  const _StartDrag();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartDrag);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshIndicatorEvent.startDrag()';
}


}




/// @nodoc


class _UpdateDrag implements RefreshIndicatorEvent {
  const _UpdateDrag(this.delta);
  

 final  double delta;

/// Create a copy of RefreshIndicatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDragCopyWith<_UpdateDrag> get copyWith => __$UpdateDragCopyWithImpl<_UpdateDrag>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDrag&&(identical(other.delta, delta) || other.delta == delta));
}


@override
int get hashCode => Object.hash(runtimeType,delta);

@override
String toString() {
  return 'RefreshIndicatorEvent.updateDrag(delta: $delta)';
}


}

/// @nodoc
abstract mixin class _$UpdateDragCopyWith<$Res> implements $RefreshIndicatorEventCopyWith<$Res> {
  factory _$UpdateDragCopyWith(_UpdateDrag value, $Res Function(_UpdateDrag) _then) = __$UpdateDragCopyWithImpl;
@useResult
$Res call({
 double delta
});




}
/// @nodoc
class __$UpdateDragCopyWithImpl<$Res>
    implements _$UpdateDragCopyWith<$Res> {
  __$UpdateDragCopyWithImpl(this._self, this._then);

  final _UpdateDrag _self;
  final $Res Function(_UpdateDrag) _then;

/// Create a copy of RefreshIndicatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? delta = null,}) {
  return _then(_UpdateDrag(
null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _EndDrag implements RefreshIndicatorEvent {
  const _EndDrag();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndDrag);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshIndicatorEvent.endDrag()';
}


}




/// @nodoc


class _Overscroll implements RefreshIndicatorEvent {
  const _Overscroll(this.amount);
  

 final  double amount;

/// Create a copy of RefreshIndicatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverscrollCopyWith<_Overscroll> get copyWith => __$OverscrollCopyWithImpl<_Overscroll>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Overscroll&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'RefreshIndicatorEvent.overscroll(amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$OverscrollCopyWith<$Res> implements $RefreshIndicatorEventCopyWith<$Res> {
  factory _$OverscrollCopyWith(_Overscroll value, $Res Function(_Overscroll) _then) = __$OverscrollCopyWithImpl;
@useResult
$Res call({
 double amount
});




}
/// @nodoc
class __$OverscrollCopyWithImpl<$Res>
    implements _$OverscrollCopyWith<$Res> {
  __$OverscrollCopyWithImpl(this._self, this._then);

  final _Overscroll _self;
  final $Res Function(_Overscroll) _then;

/// Create a copy of RefreshIndicatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(_Overscroll(
null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _TriggerRefresh implements RefreshIndicatorEvent {
  const _TriggerRefresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriggerRefresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshIndicatorEvent.triggerRefresh()';
}


}




/// @nodoc


class _RefreshComplete implements RefreshIndicatorEvent {
  const _RefreshComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshIndicatorEvent.refreshComplete()';
}


}




/// @nodoc


class _DismissComplete implements RefreshIndicatorEvent {
  const _DismissComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DismissComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshIndicatorEvent.dismissComplete()';
}


}




/// @nodoc


class _Reset implements RefreshIndicatorEvent {
  const _Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefreshIndicatorEvent.reset()';
}


}




/// @nodoc
mixin _$RefreshIndicatorState {

 bool get isRefreshing; bool get isDismissing; double get dragOffset; bool get isDragging; bool get shouldTriggerRefresh;
/// Create a copy of RefreshIndicatorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshIndicatorStateCopyWith<RefreshIndicatorState> get copyWith => _$RefreshIndicatorStateCopyWithImpl<RefreshIndicatorState>(this as RefreshIndicatorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshIndicatorState&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isDismissing, isDismissing) || other.isDismissing == isDismissing)&&(identical(other.dragOffset, dragOffset) || other.dragOffset == dragOffset)&&(identical(other.isDragging, isDragging) || other.isDragging == isDragging)&&(identical(other.shouldTriggerRefresh, shouldTriggerRefresh) || other.shouldTriggerRefresh == shouldTriggerRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,isRefreshing,isDismissing,dragOffset,isDragging,shouldTriggerRefresh);

@override
String toString() {
  return 'RefreshIndicatorState(isRefreshing: $isRefreshing, isDismissing: $isDismissing, dragOffset: $dragOffset, isDragging: $isDragging, shouldTriggerRefresh: $shouldTriggerRefresh)';
}


}

/// @nodoc
abstract mixin class $RefreshIndicatorStateCopyWith<$Res>  {
  factory $RefreshIndicatorStateCopyWith(RefreshIndicatorState value, $Res Function(RefreshIndicatorState) _then) = _$RefreshIndicatorStateCopyWithImpl;
@useResult
$Res call({
 bool isRefreshing, bool isDismissing, double dragOffset, bool isDragging, bool shouldTriggerRefresh
});




}
/// @nodoc
class _$RefreshIndicatorStateCopyWithImpl<$Res>
    implements $RefreshIndicatorStateCopyWith<$Res> {
  _$RefreshIndicatorStateCopyWithImpl(this._self, this._then);

  final RefreshIndicatorState _self;
  final $Res Function(RefreshIndicatorState) _then;

/// Create a copy of RefreshIndicatorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isRefreshing = null,Object? isDismissing = null,Object? dragOffset = null,Object? isDragging = null,Object? shouldTriggerRefresh = null,}) {
  return _then(_self.copyWith(
isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isDismissing: null == isDismissing ? _self.isDismissing : isDismissing // ignore: cast_nullable_to_non_nullable
as bool,dragOffset: null == dragOffset ? _self.dragOffset : dragOffset // ignore: cast_nullable_to_non_nullable
as double,isDragging: null == isDragging ? _self.isDragging : isDragging // ignore: cast_nullable_to_non_nullable
as bool,shouldTriggerRefresh: null == shouldTriggerRefresh ? _self.shouldTriggerRefresh : shouldTriggerRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshIndicatorState].
extension RefreshIndicatorStatePatterns on RefreshIndicatorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshIndicatorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshIndicatorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshIndicatorState value)  $default,){
final _that = this;
switch (_that) {
case _RefreshIndicatorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshIndicatorState value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshIndicatorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isRefreshing,  bool isDismissing,  double dragOffset,  bool isDragging,  bool shouldTriggerRefresh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshIndicatorState() when $default != null:
return $default(_that.isRefreshing,_that.isDismissing,_that.dragOffset,_that.isDragging,_that.shouldTriggerRefresh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isRefreshing,  bool isDismissing,  double dragOffset,  bool isDragging,  bool shouldTriggerRefresh)  $default,) {final _that = this;
switch (_that) {
case _RefreshIndicatorState():
return $default(_that.isRefreshing,_that.isDismissing,_that.dragOffset,_that.isDragging,_that.shouldTriggerRefresh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isRefreshing,  bool isDismissing,  double dragOffset,  bool isDragging,  bool shouldTriggerRefresh)?  $default,) {final _that = this;
switch (_that) {
case _RefreshIndicatorState() when $default != null:
return $default(_that.isRefreshing,_that.isDismissing,_that.dragOffset,_that.isDragging,_that.shouldTriggerRefresh);case _:
  return null;

}
}

}

/// @nodoc


class _RefreshIndicatorState extends RefreshIndicatorState {
  const _RefreshIndicatorState({this.isRefreshing = false, this.isDismissing = false, this.dragOffset = 0.0, this.isDragging = false, this.shouldTriggerRefresh = false}): super._();
  

@override@JsonKey() final  bool isRefreshing;
@override@JsonKey() final  bool isDismissing;
@override@JsonKey() final  double dragOffset;
@override@JsonKey() final  bool isDragging;
@override@JsonKey() final  bool shouldTriggerRefresh;

/// Create a copy of RefreshIndicatorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshIndicatorStateCopyWith<_RefreshIndicatorState> get copyWith => __$RefreshIndicatorStateCopyWithImpl<_RefreshIndicatorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshIndicatorState&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isDismissing, isDismissing) || other.isDismissing == isDismissing)&&(identical(other.dragOffset, dragOffset) || other.dragOffset == dragOffset)&&(identical(other.isDragging, isDragging) || other.isDragging == isDragging)&&(identical(other.shouldTriggerRefresh, shouldTriggerRefresh) || other.shouldTriggerRefresh == shouldTriggerRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,isRefreshing,isDismissing,dragOffset,isDragging,shouldTriggerRefresh);

@override
String toString() {
  return 'RefreshIndicatorState(isRefreshing: $isRefreshing, isDismissing: $isDismissing, dragOffset: $dragOffset, isDragging: $isDragging, shouldTriggerRefresh: $shouldTriggerRefresh)';
}


}

/// @nodoc
abstract mixin class _$RefreshIndicatorStateCopyWith<$Res> implements $RefreshIndicatorStateCopyWith<$Res> {
  factory _$RefreshIndicatorStateCopyWith(_RefreshIndicatorState value, $Res Function(_RefreshIndicatorState) _then) = __$RefreshIndicatorStateCopyWithImpl;
@override @useResult
$Res call({
 bool isRefreshing, bool isDismissing, double dragOffset, bool isDragging, bool shouldTriggerRefresh
});




}
/// @nodoc
class __$RefreshIndicatorStateCopyWithImpl<$Res>
    implements _$RefreshIndicatorStateCopyWith<$Res> {
  __$RefreshIndicatorStateCopyWithImpl(this._self, this._then);

  final _RefreshIndicatorState _self;
  final $Res Function(_RefreshIndicatorState) _then;

/// Create a copy of RefreshIndicatorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isRefreshing = null,Object? isDismissing = null,Object? dragOffset = null,Object? isDragging = null,Object? shouldTriggerRefresh = null,}) {
  return _then(_RefreshIndicatorState(
isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isDismissing: null == isDismissing ? _self.isDismissing : isDismissing // ignore: cast_nullable_to_non_nullable
as bool,dragOffset: null == dragOffset ? _self.dragOffset : dragOffset // ignore: cast_nullable_to_non_nullable
as double,isDragging: null == isDragging ? _self.isDragging : isDragging // ignore: cast_nullable_to_non_nullable
as bool,shouldTriggerRefresh: null == shouldTriggerRefresh ? _self.shouldTriggerRefresh : shouldTriggerRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
