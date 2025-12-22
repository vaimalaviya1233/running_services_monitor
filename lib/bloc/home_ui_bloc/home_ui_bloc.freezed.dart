// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeUiEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeUiEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeUiEvent()';
}


}

/// @nodoc
class $HomeUiEventCopyWith<$Res>  {
$HomeUiEventCopyWith(HomeUiEvent _, $Res Function(HomeUiEvent) __);
}


/// Adds pattern-matching-related methods to [HomeUiEvent].
extension HomeUiEventPatterns on HomeUiEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ScrollDirectionChanged value)?  scrollDirectionChanged,TResult Function( _TabChanged value)?  tabChanged,TResult Function( _Reset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScrollDirectionChanged() when scrollDirectionChanged != null:
return scrollDirectionChanged(_that);case _TabChanged() when tabChanged != null:
return tabChanged(_that);case _Reset() when reset != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ScrollDirectionChanged value)  scrollDirectionChanged,required TResult Function( _TabChanged value)  tabChanged,required TResult Function( _Reset value)  reset,}){
final _that = this;
switch (_that) {
case _ScrollDirectionChanged():
return scrollDirectionChanged(_that);case _TabChanged():
return tabChanged(_that);case _Reset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ScrollDirectionChanged value)?  scrollDirectionChanged,TResult? Function( _TabChanged value)?  tabChanged,TResult? Function( _Reset value)?  reset,}){
final _that = this;
switch (_that) {
case _ScrollDirectionChanged() when scrollDirectionChanged != null:
return scrollDirectionChanged(_that);case _TabChanged() when tabChanged != null:
return tabChanged(_that);case _Reset() when reset != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UiScrollDirection direction)?  scrollDirectionChanged,TResult Function( int index)?  tabChanged,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScrollDirectionChanged() when scrollDirectionChanged != null:
return scrollDirectionChanged(_that.direction);case _TabChanged() when tabChanged != null:
return tabChanged(_that.index);case _Reset() when reset != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UiScrollDirection direction)  scrollDirectionChanged,required TResult Function( int index)  tabChanged,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _ScrollDirectionChanged():
return scrollDirectionChanged(_that.direction);case _TabChanged():
return tabChanged(_that.index);case _Reset():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UiScrollDirection direction)?  scrollDirectionChanged,TResult? Function( int index)?  tabChanged,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _ScrollDirectionChanged() when scrollDirectionChanged != null:
return scrollDirectionChanged(_that.direction);case _TabChanged() when tabChanged != null:
return tabChanged(_that.index);case _Reset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _ScrollDirectionChanged implements HomeUiEvent {
  const _ScrollDirectionChanged(this.direction);
  

 final  UiScrollDirection direction;

/// Create a copy of HomeUiEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScrollDirectionChangedCopyWith<_ScrollDirectionChanged> get copyWith => __$ScrollDirectionChangedCopyWithImpl<_ScrollDirectionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScrollDirectionChanged&&(identical(other.direction, direction) || other.direction == direction));
}


@override
int get hashCode => Object.hash(runtimeType,direction);

@override
String toString() {
  return 'HomeUiEvent.scrollDirectionChanged(direction: $direction)';
}


}

/// @nodoc
abstract mixin class _$ScrollDirectionChangedCopyWith<$Res> implements $HomeUiEventCopyWith<$Res> {
  factory _$ScrollDirectionChangedCopyWith(_ScrollDirectionChanged value, $Res Function(_ScrollDirectionChanged) _then) = __$ScrollDirectionChangedCopyWithImpl;
@useResult
$Res call({
 UiScrollDirection direction
});




}
/// @nodoc
class __$ScrollDirectionChangedCopyWithImpl<$Res>
    implements _$ScrollDirectionChangedCopyWith<$Res> {
  __$ScrollDirectionChangedCopyWithImpl(this._self, this._then);

  final _ScrollDirectionChanged _self;
  final $Res Function(_ScrollDirectionChanged) _then;

/// Create a copy of HomeUiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? direction = null,}) {
  return _then(_ScrollDirectionChanged(
null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as UiScrollDirection,
  ));
}


}

/// @nodoc


class _TabChanged implements HomeUiEvent {
  const _TabChanged(this.index);
  

 final  int index;

/// Create a copy of HomeUiEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabChangedCopyWith<_TabChanged> get copyWith => __$TabChangedCopyWithImpl<_TabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabChanged&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'HomeUiEvent.tabChanged(index: $index)';
}


}

/// @nodoc
abstract mixin class _$TabChangedCopyWith<$Res> implements $HomeUiEventCopyWith<$Res> {
  factory _$TabChangedCopyWith(_TabChanged value, $Res Function(_TabChanged) _then) = __$TabChangedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$TabChangedCopyWithImpl<$Res>
    implements _$TabChangedCopyWith<$Res> {
  __$TabChangedCopyWithImpl(this._self, this._then);

  final _TabChanged _self;
  final $Res Function(_TabChanged) _then;

/// Create a copy of HomeUiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_TabChanged(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Reset implements HomeUiEvent {
  const _Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeUiEvent.reset()';
}


}




/// @nodoc
mixin _$HomeUiState {

 bool get isFabExtended; bool get isFabVisible;
/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeUiStateCopyWith<HomeUiState> get copyWith => _$HomeUiStateCopyWithImpl<HomeUiState>(this as HomeUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeUiState&&(identical(other.isFabExtended, isFabExtended) || other.isFabExtended == isFabExtended)&&(identical(other.isFabVisible, isFabVisible) || other.isFabVisible == isFabVisible));
}


@override
int get hashCode => Object.hash(runtimeType,isFabExtended,isFabVisible);

@override
String toString() {
  return 'HomeUiState(isFabExtended: $isFabExtended, isFabVisible: $isFabVisible)';
}


}

/// @nodoc
abstract mixin class $HomeUiStateCopyWith<$Res>  {
  factory $HomeUiStateCopyWith(HomeUiState value, $Res Function(HomeUiState) _then) = _$HomeUiStateCopyWithImpl;
@useResult
$Res call({
 bool isFabExtended, bool isFabVisible
});




}
/// @nodoc
class _$HomeUiStateCopyWithImpl<$Res>
    implements $HomeUiStateCopyWith<$Res> {
  _$HomeUiStateCopyWithImpl(this._self, this._then);

  final HomeUiState _self;
  final $Res Function(HomeUiState) _then;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFabExtended = null,Object? isFabVisible = null,}) {
  return _then(_self.copyWith(
isFabExtended: null == isFabExtended ? _self.isFabExtended : isFabExtended // ignore: cast_nullable_to_non_nullable
as bool,isFabVisible: null == isFabVisible ? _self.isFabVisible : isFabVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeUiState].
extension HomeUiStatePatterns on HomeUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeUiState value)  $default,){
final _that = this;
switch (_that) {
case _HomeUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeUiState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFabExtended,  bool isFabVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that.isFabExtended,_that.isFabVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFabExtended,  bool isFabVisible)  $default,) {final _that = this;
switch (_that) {
case _HomeUiState():
return $default(_that.isFabExtended,_that.isFabVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFabExtended,  bool isFabVisible)?  $default,) {final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that.isFabExtended,_that.isFabVisible);case _:
  return null;

}
}

}

/// @nodoc


class _HomeUiState extends HomeUiState {
  const _HomeUiState({this.isFabExtended = true, this.isFabVisible = true}): super._();
  

@override@JsonKey() final  bool isFabExtended;
@override@JsonKey() final  bool isFabVisible;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeUiStateCopyWith<_HomeUiState> get copyWith => __$HomeUiStateCopyWithImpl<_HomeUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeUiState&&(identical(other.isFabExtended, isFabExtended) || other.isFabExtended == isFabExtended)&&(identical(other.isFabVisible, isFabVisible) || other.isFabVisible == isFabVisible));
}


@override
int get hashCode => Object.hash(runtimeType,isFabExtended,isFabVisible);

@override
String toString() {
  return 'HomeUiState(isFabExtended: $isFabExtended, isFabVisible: $isFabVisible)';
}


}

/// @nodoc
abstract mixin class _$HomeUiStateCopyWith<$Res> implements $HomeUiStateCopyWith<$Res> {
  factory _$HomeUiStateCopyWith(_HomeUiState value, $Res Function(_HomeUiState) _then) = __$HomeUiStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFabExtended, bool isFabVisible
});




}
/// @nodoc
class __$HomeUiStateCopyWithImpl<$Res>
    implements _$HomeUiStateCopyWith<$Res> {
  __$HomeUiStateCopyWithImpl(this._self, this._then);

  final _HomeUiState _self;
  final $Res Function(_HomeUiState) _then;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFabExtended = null,Object? isFabVisible = null,}) {
  return _then(_HomeUiState(
isFabExtended: null == isFabExtended ? _self.isFabExtended : isFabExtended // ignore: cast_nullable_to_non_nullable
as bool,isFabVisible: null == isFabVisible ? _self.isFabVisible : isFabVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
