// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_log_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommandLogEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandLogEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandLogEvent()';
}


}

/// @nodoc
class $CommandLogEventCopyWith<$Res>  {
$CommandLogEventCopyWith(CommandLogEvent _, $Res Function(CommandLogEvent) __);
}


/// Adds pattern-matching-related methods to [CommandLogEvent].
extension CommandLogEventPatterns on CommandLogEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Refresh value)?  refresh,TResult Function( _ClearLogs value)?  clearLogs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refresh() when refresh != null:
return refresh(_that);case _ClearLogs() when clearLogs != null:
return clearLogs(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Refresh value)  refresh,required TResult Function( _ClearLogs value)  clearLogs,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Refresh():
return refresh(_that);case _ClearLogs():
return clearLogs(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Refresh value)?  refresh,TResult? Function( _ClearLogs value)?  clearLogs,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refresh() when refresh != null:
return refresh(_that);case _ClearLogs() when clearLogs != null:
return clearLogs(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refresh,TResult Function()?  clearLogs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refresh() when refresh != null:
return refresh();case _ClearLogs() when clearLogs != null:
return clearLogs();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refresh,required TResult Function()  clearLogs,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Refresh():
return refresh();case _ClearLogs():
return clearLogs();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refresh,TResult? Function()?  clearLogs,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refresh() when refresh != null:
return refresh();case _ClearLogs() when clearLogs != null:
return clearLogs();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CommandLogEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandLogEvent.started()';
}


}




/// @nodoc


class _Refresh implements CommandLogEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandLogEvent.refresh()';
}


}




/// @nodoc


class _ClearLogs implements CommandLogEvent {
  const _ClearLogs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearLogs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandLogEvent.clearLogs()';
}


}




/// @nodoc
mixin _$CommandLogState {

 List<CommandLogEntry> get entries; bool get isLoading;
/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandLogStateCopyWith<CommandLogState> get copyWith => _$CommandLogStateCopyWithImpl<CommandLogState>(this as CommandLogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandLogState&&const DeepCollectionEquality().equals(other.entries, entries)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(entries),isLoading);

@override
String toString() {
  return 'CommandLogState(entries: $entries, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $CommandLogStateCopyWith<$Res>  {
  factory $CommandLogStateCopyWith(CommandLogState value, $Res Function(CommandLogState) _then) = _$CommandLogStateCopyWithImpl;
@useResult
$Res call({
 List<CommandLogEntry> entries, bool isLoading
});




}
/// @nodoc
class _$CommandLogStateCopyWithImpl<$Res>
    implements $CommandLogStateCopyWith<$Res> {
  _$CommandLogStateCopyWithImpl(this._self, this._then);

  final CommandLogState _self;
  final $Res Function(CommandLogState) _then;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entries = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<CommandLogEntry>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommandLogState].
extension CommandLogStatePatterns on CommandLogState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandLogState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandLogState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandLogState value)  $default,){
final _that = this;
switch (_that) {
case _CommandLogState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandLogState value)?  $default,){
final _that = this;
switch (_that) {
case _CommandLogState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CommandLogEntry> entries,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandLogState() when $default != null:
return $default(_that.entries,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CommandLogEntry> entries,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _CommandLogState():
return $default(_that.entries,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CommandLogEntry> entries,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _CommandLogState() when $default != null:
return $default(_that.entries,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _CommandLogState implements CommandLogState {
  const _CommandLogState({final  List<CommandLogEntry> entries = const [], this.isLoading = false}): _entries = entries;
  

 final  List<CommandLogEntry> _entries;
@override@JsonKey() List<CommandLogEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandLogStateCopyWith<_CommandLogState> get copyWith => __$CommandLogStateCopyWithImpl<_CommandLogState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandLogState&&const DeepCollectionEquality().equals(other._entries, _entries)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries),isLoading);

@override
String toString() {
  return 'CommandLogState(entries: $entries, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$CommandLogStateCopyWith<$Res> implements $CommandLogStateCopyWith<$Res> {
  factory _$CommandLogStateCopyWith(_CommandLogState value, $Res Function(_CommandLogState) _then) = __$CommandLogStateCopyWithImpl;
@override @useResult
$Res call({
 List<CommandLogEntry> entries, bool isLoading
});




}
/// @nodoc
class __$CommandLogStateCopyWithImpl<$Res>
    implements _$CommandLogStateCopyWith<$Res> {
  __$CommandLogStateCopyWithImpl(this._self, this._then);

  final _CommandLogState _self;
  final $Res Function(_CommandLogState) _then;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entries = null,Object? isLoading = null,}) {
  return _then(_CommandLogState(
entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<CommandLogEntry>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
