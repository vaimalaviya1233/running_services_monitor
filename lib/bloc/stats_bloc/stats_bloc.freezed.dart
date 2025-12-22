// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsEvent()';
}


}

/// @nodoc
class $StatsEventCopyWith<$Res>  {
$StatsEventCopyWith(StatsEvent _, $Res Function(StatsEvent) __);
}


/// Adds pattern-matching-related methods to [StatsEvent].
extension StatsEventPatterns on StatsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddRamHistoryPoint value)?  addRamHistoryPoint,TResult Function( _UpdateChartTouchIndex value)?  updateChartTouchIndex,TResult Function( _ResetChartTouchIndex value)?  resetChartTouchIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddRamHistoryPoint() when addRamHistoryPoint != null:
return addRamHistoryPoint(_that);case _UpdateChartTouchIndex() when updateChartTouchIndex != null:
return updateChartTouchIndex(_that);case _ResetChartTouchIndex() when resetChartTouchIndex != null:
return resetChartTouchIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddRamHistoryPoint value)  addRamHistoryPoint,required TResult Function( _UpdateChartTouchIndex value)  updateChartTouchIndex,required TResult Function( _ResetChartTouchIndex value)  resetChartTouchIndex,}){
final _that = this;
switch (_that) {
case _AddRamHistoryPoint():
return addRamHistoryPoint(_that);case _UpdateChartTouchIndex():
return updateChartTouchIndex(_that);case _ResetChartTouchIndex():
return resetChartTouchIndex(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddRamHistoryPoint value)?  addRamHistoryPoint,TResult? Function( _UpdateChartTouchIndex value)?  updateChartTouchIndex,TResult? Function( _ResetChartTouchIndex value)?  resetChartTouchIndex,}){
final _that = this;
switch (_that) {
case _AddRamHistoryPoint() when addRamHistoryPoint != null:
return addRamHistoryPoint(_that);case _UpdateChartTouchIndex() when updateChartTouchIndex != null:
return updateChartTouchIndex(_that);case _ResetChartTouchIndex() when resetChartTouchIndex != null:
return resetChartTouchIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double usedRam)?  addRamHistoryPoint,TResult Function( String chartType,  int index)?  updateChartTouchIndex,TResult Function()?  resetChartTouchIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddRamHistoryPoint() when addRamHistoryPoint != null:
return addRamHistoryPoint(_that.usedRam);case _UpdateChartTouchIndex() when updateChartTouchIndex != null:
return updateChartTouchIndex(_that.chartType,_that.index);case _ResetChartTouchIndex() when resetChartTouchIndex != null:
return resetChartTouchIndex();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double usedRam)  addRamHistoryPoint,required TResult Function( String chartType,  int index)  updateChartTouchIndex,required TResult Function()  resetChartTouchIndex,}) {final _that = this;
switch (_that) {
case _AddRamHistoryPoint():
return addRamHistoryPoint(_that.usedRam);case _UpdateChartTouchIndex():
return updateChartTouchIndex(_that.chartType,_that.index);case _ResetChartTouchIndex():
return resetChartTouchIndex();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double usedRam)?  addRamHistoryPoint,TResult? Function( String chartType,  int index)?  updateChartTouchIndex,TResult? Function()?  resetChartTouchIndex,}) {final _that = this;
switch (_that) {
case _AddRamHistoryPoint() when addRamHistoryPoint != null:
return addRamHistoryPoint(_that.usedRam);case _UpdateChartTouchIndex() when updateChartTouchIndex != null:
return updateChartTouchIndex(_that.chartType,_that.index);case _ResetChartTouchIndex() when resetChartTouchIndex != null:
return resetChartTouchIndex();case _:
  return null;

}
}

}

/// @nodoc


class _AddRamHistoryPoint implements StatsEvent {
  const _AddRamHistoryPoint(this.usedRam);
  

 final  double usedRam;

/// Create a copy of StatsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddRamHistoryPointCopyWith<_AddRamHistoryPoint> get copyWith => __$AddRamHistoryPointCopyWithImpl<_AddRamHistoryPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddRamHistoryPoint&&(identical(other.usedRam, usedRam) || other.usedRam == usedRam));
}


@override
int get hashCode => Object.hash(runtimeType,usedRam);

@override
String toString() {
  return 'StatsEvent.addRamHistoryPoint(usedRam: $usedRam)';
}


}

/// @nodoc
abstract mixin class _$AddRamHistoryPointCopyWith<$Res> implements $StatsEventCopyWith<$Res> {
  factory _$AddRamHistoryPointCopyWith(_AddRamHistoryPoint value, $Res Function(_AddRamHistoryPoint) _then) = __$AddRamHistoryPointCopyWithImpl;
@useResult
$Res call({
 double usedRam
});




}
/// @nodoc
class __$AddRamHistoryPointCopyWithImpl<$Res>
    implements _$AddRamHistoryPointCopyWith<$Res> {
  __$AddRamHistoryPointCopyWithImpl(this._self, this._then);

  final _AddRamHistoryPoint _self;
  final $Res Function(_AddRamHistoryPoint) _then;

/// Create a copy of StatsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? usedRam = null,}) {
  return _then(_AddRamHistoryPoint(
null == usedRam ? _self.usedRam : usedRam // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _UpdateChartTouchIndex implements StatsEvent {
  const _UpdateChartTouchIndex({required this.chartType, required this.index});
  

 final  String chartType;
 final  int index;

/// Create a copy of StatsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateChartTouchIndexCopyWith<_UpdateChartTouchIndex> get copyWith => __$UpdateChartTouchIndexCopyWithImpl<_UpdateChartTouchIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateChartTouchIndex&&(identical(other.chartType, chartType) || other.chartType == chartType)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,chartType,index);

@override
String toString() {
  return 'StatsEvent.updateChartTouchIndex(chartType: $chartType, index: $index)';
}


}

/// @nodoc
abstract mixin class _$UpdateChartTouchIndexCopyWith<$Res> implements $StatsEventCopyWith<$Res> {
  factory _$UpdateChartTouchIndexCopyWith(_UpdateChartTouchIndex value, $Res Function(_UpdateChartTouchIndex) _then) = __$UpdateChartTouchIndexCopyWithImpl;
@useResult
$Res call({
 String chartType, int index
});




}
/// @nodoc
class __$UpdateChartTouchIndexCopyWithImpl<$Res>
    implements _$UpdateChartTouchIndexCopyWith<$Res> {
  __$UpdateChartTouchIndexCopyWithImpl(this._self, this._then);

  final _UpdateChartTouchIndex _self;
  final $Res Function(_UpdateChartTouchIndex) _then;

/// Create a copy of StatsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chartType = null,Object? index = null,}) {
  return _then(_UpdateChartTouchIndex(
chartType: null == chartType ? _self.chartType : chartType // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ResetChartTouchIndex implements StatsEvent {
  const _ResetChartTouchIndex();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetChartTouchIndex);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsEvent.resetChartTouchIndex()';
}


}




/// @nodoc
mixin _$StatsState {

 List<FlSpot> get ramHistory; double get ramHistoryCounter; int get ramDistributionTouchedIndex; int get userSystemTouchedIndex; int get processStateTouchedIndex; int get scatterTouchedIndex;
/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsStateCopyWith<StatsState> get copyWith => _$StatsStateCopyWithImpl<StatsState>(this as StatsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsState&&const DeepCollectionEquality().equals(other.ramHistory, ramHistory)&&(identical(other.ramHistoryCounter, ramHistoryCounter) || other.ramHistoryCounter == ramHistoryCounter)&&(identical(other.ramDistributionTouchedIndex, ramDistributionTouchedIndex) || other.ramDistributionTouchedIndex == ramDistributionTouchedIndex)&&(identical(other.userSystemTouchedIndex, userSystemTouchedIndex) || other.userSystemTouchedIndex == userSystemTouchedIndex)&&(identical(other.processStateTouchedIndex, processStateTouchedIndex) || other.processStateTouchedIndex == processStateTouchedIndex)&&(identical(other.scatterTouchedIndex, scatterTouchedIndex) || other.scatterTouchedIndex == scatterTouchedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ramHistory),ramHistoryCounter,ramDistributionTouchedIndex,userSystemTouchedIndex,processStateTouchedIndex,scatterTouchedIndex);

@override
String toString() {
  return 'StatsState(ramHistory: $ramHistory, ramHistoryCounter: $ramHistoryCounter, ramDistributionTouchedIndex: $ramDistributionTouchedIndex, userSystemTouchedIndex: $userSystemTouchedIndex, processStateTouchedIndex: $processStateTouchedIndex, scatterTouchedIndex: $scatterTouchedIndex)';
}


}

/// @nodoc
abstract mixin class $StatsStateCopyWith<$Res>  {
  factory $StatsStateCopyWith(StatsState value, $Res Function(StatsState) _then) = _$StatsStateCopyWithImpl;
@useResult
$Res call({
 List<FlSpot> ramHistory, double ramHistoryCounter, int ramDistributionTouchedIndex, int userSystemTouchedIndex, int processStateTouchedIndex, int scatterTouchedIndex
});




}
/// @nodoc
class _$StatsStateCopyWithImpl<$Res>
    implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._self, this._then);

  final StatsState _self;
  final $Res Function(StatsState) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ramHistory = null,Object? ramHistoryCounter = null,Object? ramDistributionTouchedIndex = null,Object? userSystemTouchedIndex = null,Object? processStateTouchedIndex = null,Object? scatterTouchedIndex = null,}) {
  return _then(_self.copyWith(
ramHistory: null == ramHistory ? _self.ramHistory : ramHistory // ignore: cast_nullable_to_non_nullable
as List<FlSpot>,ramHistoryCounter: null == ramHistoryCounter ? _self.ramHistoryCounter : ramHistoryCounter // ignore: cast_nullable_to_non_nullable
as double,ramDistributionTouchedIndex: null == ramDistributionTouchedIndex ? _self.ramDistributionTouchedIndex : ramDistributionTouchedIndex // ignore: cast_nullable_to_non_nullable
as int,userSystemTouchedIndex: null == userSystemTouchedIndex ? _self.userSystemTouchedIndex : userSystemTouchedIndex // ignore: cast_nullable_to_non_nullable
as int,processStateTouchedIndex: null == processStateTouchedIndex ? _self.processStateTouchedIndex : processStateTouchedIndex // ignore: cast_nullable_to_non_nullable
as int,scatterTouchedIndex: null == scatterTouchedIndex ? _self.scatterTouchedIndex : scatterTouchedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsState].
extension StatsStatePatterns on StatsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsState value)  $default,){
final _that = this;
switch (_that) {
case _StatsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsState value)?  $default,){
final _that = this;
switch (_that) {
case _StatsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FlSpot> ramHistory,  double ramHistoryCounter,  int ramDistributionTouchedIndex,  int userSystemTouchedIndex,  int processStateTouchedIndex,  int scatterTouchedIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsState() when $default != null:
return $default(_that.ramHistory,_that.ramHistoryCounter,_that.ramDistributionTouchedIndex,_that.userSystemTouchedIndex,_that.processStateTouchedIndex,_that.scatterTouchedIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FlSpot> ramHistory,  double ramHistoryCounter,  int ramDistributionTouchedIndex,  int userSystemTouchedIndex,  int processStateTouchedIndex,  int scatterTouchedIndex)  $default,) {final _that = this;
switch (_that) {
case _StatsState():
return $default(_that.ramHistory,_that.ramHistoryCounter,_that.ramDistributionTouchedIndex,_that.userSystemTouchedIndex,_that.processStateTouchedIndex,_that.scatterTouchedIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FlSpot> ramHistory,  double ramHistoryCounter,  int ramDistributionTouchedIndex,  int userSystemTouchedIndex,  int processStateTouchedIndex,  int scatterTouchedIndex)?  $default,) {final _that = this;
switch (_that) {
case _StatsState() when $default != null:
return $default(_that.ramHistory,_that.ramHistoryCounter,_that.ramDistributionTouchedIndex,_that.userSystemTouchedIndex,_that.processStateTouchedIndex,_that.scatterTouchedIndex);case _:
  return null;

}
}

}

/// @nodoc


class _StatsState implements StatsState {
  const _StatsState({final  List<FlSpot> ramHistory = const [], this.ramHistoryCounter = 0, this.ramDistributionTouchedIndex = -1, this.userSystemTouchedIndex = -1, this.processStateTouchedIndex = -1, this.scatterTouchedIndex = -1}): _ramHistory = ramHistory;
  

 final  List<FlSpot> _ramHistory;
@override@JsonKey() List<FlSpot> get ramHistory {
  if (_ramHistory is EqualUnmodifiableListView) return _ramHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ramHistory);
}

@override@JsonKey() final  double ramHistoryCounter;
@override@JsonKey() final  int ramDistributionTouchedIndex;
@override@JsonKey() final  int userSystemTouchedIndex;
@override@JsonKey() final  int processStateTouchedIndex;
@override@JsonKey() final  int scatterTouchedIndex;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsStateCopyWith<_StatsState> get copyWith => __$StatsStateCopyWithImpl<_StatsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsState&&const DeepCollectionEquality().equals(other._ramHistory, _ramHistory)&&(identical(other.ramHistoryCounter, ramHistoryCounter) || other.ramHistoryCounter == ramHistoryCounter)&&(identical(other.ramDistributionTouchedIndex, ramDistributionTouchedIndex) || other.ramDistributionTouchedIndex == ramDistributionTouchedIndex)&&(identical(other.userSystemTouchedIndex, userSystemTouchedIndex) || other.userSystemTouchedIndex == userSystemTouchedIndex)&&(identical(other.processStateTouchedIndex, processStateTouchedIndex) || other.processStateTouchedIndex == processStateTouchedIndex)&&(identical(other.scatterTouchedIndex, scatterTouchedIndex) || other.scatterTouchedIndex == scatterTouchedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ramHistory),ramHistoryCounter,ramDistributionTouchedIndex,userSystemTouchedIndex,processStateTouchedIndex,scatterTouchedIndex);

@override
String toString() {
  return 'StatsState(ramHistory: $ramHistory, ramHistoryCounter: $ramHistoryCounter, ramDistributionTouchedIndex: $ramDistributionTouchedIndex, userSystemTouchedIndex: $userSystemTouchedIndex, processStateTouchedIndex: $processStateTouchedIndex, scatterTouchedIndex: $scatterTouchedIndex)';
}


}

/// @nodoc
abstract mixin class _$StatsStateCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$StatsStateCopyWith(_StatsState value, $Res Function(_StatsState) _then) = __$StatsStateCopyWithImpl;
@override @useResult
$Res call({
 List<FlSpot> ramHistory, double ramHistoryCounter, int ramDistributionTouchedIndex, int userSystemTouchedIndex, int processStateTouchedIndex, int scatterTouchedIndex
});




}
/// @nodoc
class __$StatsStateCopyWithImpl<$Res>
    implements _$StatsStateCopyWith<$Res> {
  __$StatsStateCopyWithImpl(this._self, this._then);

  final _StatsState _self;
  final $Res Function(_StatsState) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ramHistory = null,Object? ramHistoryCounter = null,Object? ramDistributionTouchedIndex = null,Object? userSystemTouchedIndex = null,Object? processStateTouchedIndex = null,Object? scatterTouchedIndex = null,}) {
  return _then(_StatsState(
ramHistory: null == ramHistory ? _self._ramHistory : ramHistory // ignore: cast_nullable_to_non_nullable
as List<FlSpot>,ramHistoryCounter: null == ramHistoryCounter ? _self.ramHistoryCounter : ramHistoryCounter // ignore: cast_nullable_to_non_nullable
as double,ramDistributionTouchedIndex: null == ramDistributionTouchedIndex ? _self.ramDistributionTouchedIndex : ramDistributionTouchedIndex // ignore: cast_nullable_to_non_nullable
as int,userSystemTouchedIndex: null == userSystemTouchedIndex ? _self.userSystemTouchedIndex : userSystemTouchedIndex // ignore: cast_nullable_to_non_nullable
as int,processStateTouchedIndex: null == processStateTouchedIndex ? _self.processStateTouchedIndex : processStateTouchedIndex // ignore: cast_nullable_to_non_nullable
as int,scatterTouchedIndex: null == scatterTouchedIndex ? _self.scatterTouchedIndex : scatterTouchedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
