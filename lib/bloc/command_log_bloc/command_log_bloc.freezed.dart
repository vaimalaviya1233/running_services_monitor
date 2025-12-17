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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Refresh value)?  refresh,TResult Function( _ClearLogs value)?  clearLogs,TResult Function( _ExecuteCommand value)?  executeCommand,TResult Function( _SelectEntry value)?  selectEntry,TResult Function( _EntriesUpdated value)?  entriesUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refresh() when refresh != null:
return refresh(_that);case _ClearLogs() when clearLogs != null:
return clearLogs(_that);case _ExecuteCommand() when executeCommand != null:
return executeCommand(_that);case _SelectEntry() when selectEntry != null:
return selectEntry(_that);case _EntriesUpdated() when entriesUpdated != null:
return entriesUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Refresh value)  refresh,required TResult Function( _ClearLogs value)  clearLogs,required TResult Function( _ExecuteCommand value)  executeCommand,required TResult Function( _SelectEntry value)  selectEntry,required TResult Function( _EntriesUpdated value)  entriesUpdated,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Refresh():
return refresh(_that);case _ClearLogs():
return clearLogs(_that);case _ExecuteCommand():
return executeCommand(_that);case _SelectEntry():
return selectEntry(_that);case _EntriesUpdated():
return entriesUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Refresh value)?  refresh,TResult? Function( _ClearLogs value)?  clearLogs,TResult? Function( _ExecuteCommand value)?  executeCommand,TResult? Function( _SelectEntry value)?  selectEntry,TResult? Function( _EntriesUpdated value)?  entriesUpdated,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refresh() when refresh != null:
return refresh(_that);case _ClearLogs() when clearLogs != null:
return clearLogs(_that);case _ExecuteCommand() when executeCommand != null:
return executeCommand(_that);case _SelectEntry() when selectEntry != null:
return selectEntry(_that);case _EntriesUpdated() when entriesUpdated != null:
return entriesUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refresh,TResult Function()?  clearLogs,TResult Function( String command)?  executeCommand,TResult Function( String? entryId)?  selectEntry,TResult Function( List<CommandLogEntry> entries)?  entriesUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refresh() when refresh != null:
return refresh();case _ClearLogs() when clearLogs != null:
return clearLogs();case _ExecuteCommand() when executeCommand != null:
return executeCommand(_that.command);case _SelectEntry() when selectEntry != null:
return selectEntry(_that.entryId);case _EntriesUpdated() when entriesUpdated != null:
return entriesUpdated(_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refresh,required TResult Function()  clearLogs,required TResult Function( String command)  executeCommand,required TResult Function( String? entryId)  selectEntry,required TResult Function( List<CommandLogEntry> entries)  entriesUpdated,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Refresh():
return refresh();case _ClearLogs():
return clearLogs();case _ExecuteCommand():
return executeCommand(_that.command);case _SelectEntry():
return selectEntry(_that.entryId);case _EntriesUpdated():
return entriesUpdated(_that.entries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refresh,TResult? Function()?  clearLogs,TResult? Function( String command)?  executeCommand,TResult? Function( String? entryId)?  selectEntry,TResult? Function( List<CommandLogEntry> entries)?  entriesUpdated,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refresh() when refresh != null:
return refresh();case _ClearLogs() when clearLogs != null:
return clearLogs();case _ExecuteCommand() when executeCommand != null:
return executeCommand(_that.command);case _SelectEntry() when selectEntry != null:
return selectEntry(_that.entryId);case _EntriesUpdated() when entriesUpdated != null:
return entriesUpdated(_that.entries);case _:
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


class _ExecuteCommand implements CommandLogEvent {
  const _ExecuteCommand(this.command);
  

 final  String command;

/// Create a copy of CommandLogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExecuteCommandCopyWith<_ExecuteCommand> get copyWith => __$ExecuteCommandCopyWithImpl<_ExecuteCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExecuteCommand&&(identical(other.command, command) || other.command == command));
}


@override
int get hashCode => Object.hash(runtimeType,command);

@override
String toString() {
  return 'CommandLogEvent.executeCommand(command: $command)';
}


}

/// @nodoc
abstract mixin class _$ExecuteCommandCopyWith<$Res> implements $CommandLogEventCopyWith<$Res> {
  factory _$ExecuteCommandCopyWith(_ExecuteCommand value, $Res Function(_ExecuteCommand) _then) = __$ExecuteCommandCopyWithImpl;
@useResult
$Res call({
 String command
});




}
/// @nodoc
class __$ExecuteCommandCopyWithImpl<$Res>
    implements _$ExecuteCommandCopyWith<$Res> {
  __$ExecuteCommandCopyWithImpl(this._self, this._then);

  final _ExecuteCommand _self;
  final $Res Function(_ExecuteCommand) _then;

/// Create a copy of CommandLogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? command = null,}) {
  return _then(_ExecuteCommand(
null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SelectEntry implements CommandLogEvent {
  const _SelectEntry(this.entryId);
  

 final  String? entryId;

/// Create a copy of CommandLogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectEntryCopyWith<_SelectEntry> get copyWith => __$SelectEntryCopyWithImpl<_SelectEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectEntry&&(identical(other.entryId, entryId) || other.entryId == entryId));
}


@override
int get hashCode => Object.hash(runtimeType,entryId);

@override
String toString() {
  return 'CommandLogEvent.selectEntry(entryId: $entryId)';
}


}

/// @nodoc
abstract mixin class _$SelectEntryCopyWith<$Res> implements $CommandLogEventCopyWith<$Res> {
  factory _$SelectEntryCopyWith(_SelectEntry value, $Res Function(_SelectEntry) _then) = __$SelectEntryCopyWithImpl;
@useResult
$Res call({
 String? entryId
});




}
/// @nodoc
class __$SelectEntryCopyWithImpl<$Res>
    implements _$SelectEntryCopyWith<$Res> {
  __$SelectEntryCopyWithImpl(this._self, this._then);

  final _SelectEntry _self;
  final $Res Function(_SelectEntry) _then;

/// Create a copy of CommandLogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entryId = freezed,}) {
  return _then(_SelectEntry(
freezed == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _EntriesUpdated implements CommandLogEvent {
  const _EntriesUpdated(final  List<CommandLogEntry> entries): _entries = entries;
  

 final  List<CommandLogEntry> _entries;
 List<CommandLogEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of CommandLogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntriesUpdatedCopyWith<_EntriesUpdated> get copyWith => __$EntriesUpdatedCopyWithImpl<_EntriesUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntriesUpdated&&const DeepCollectionEquality().equals(other._entries, _entries));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries));

@override
String toString() {
  return 'CommandLogEvent.entriesUpdated(entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$EntriesUpdatedCopyWith<$Res> implements $CommandLogEventCopyWith<$Res> {
  factory _$EntriesUpdatedCopyWith(_EntriesUpdated value, $Res Function(_EntriesUpdated) _then) = __$EntriesUpdatedCopyWithImpl;
@useResult
$Res call({
 List<CommandLogEntry> entries
});




}
/// @nodoc
class __$EntriesUpdatedCopyWithImpl<$Res>
    implements _$EntriesUpdatedCopyWith<$Res> {
  __$EntriesUpdatedCopyWithImpl(this._self, this._then);

  final _EntriesUpdated _self;
  final $Res Function(_EntriesUpdated) _then;

/// Create a copy of CommandLogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entries = null,}) {
  return _then(_EntriesUpdated(
null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<CommandLogEntry>,
  ));
}


}

/// @nodoc
mixin _$CommandLogState {

 List<CommandLogEntry> get value;
/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandLogStateCopyWith<CommandLogState> get copyWith => _$CommandLogStateCopyWithImpl<CommandLogState>(this as CommandLogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandLogState&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'CommandLogState(value: $value)';
}


}

/// @nodoc
abstract mixin class $CommandLogStateCopyWith<$Res>  {
  factory $CommandLogStateCopyWith(CommandLogState value, $Res Function(CommandLogState) _then) = _$CommandLogStateCopyWithImpl;
@useResult
$Res call({
 List<CommandLogEntry> value
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
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as List<CommandLogEntry>,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<CommandLogEntry> value)?  initial,TResult Function( List<CommandLogEntry> value)?  loading,TResult Function( List<CommandLogEntry> value,  String? selectedEntryId)?  success,TResult Function( List<CommandLogEntry> value,  String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.value);case _Loading() when loading != null:
return loading(_that.value);case _Success() when success != null:
return success(_that.value,_that.selectedEntryId);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<CommandLogEntry> value)  initial,required TResult Function( List<CommandLogEntry> value)  loading,required TResult Function( List<CommandLogEntry> value,  String? selectedEntryId)  success,required TResult Function( List<CommandLogEntry> value,  String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.value);case _Loading():
return loading(_that.value);case _Success():
return success(_that.value,_that.selectedEntryId);case _Error():
return error(_that.value,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<CommandLogEntry> value)?  initial,TResult? Function( List<CommandLogEntry> value)?  loading,TResult? Function( List<CommandLogEntry> value,  String? selectedEntryId)?  success,TResult? Function( List<CommandLogEntry> value,  String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.value);case _Loading() when loading != null:
return loading(_that.value);case _Success() when success != null:
return success(_that.value,_that.selectedEntryId);case _Error() when error != null:
return error(_that.value,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial extends CommandLogState {
  const _Initial({final  List<CommandLogEntry> value = const []}): _value = value,super._();
  

 final  List<CommandLogEntry> _value;
@override@JsonKey() List<CommandLogEntry> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}


/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._value, _value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value));

@override
String toString() {
  return 'CommandLogState.initial(value: $value)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $CommandLogStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<CommandLogEntry> value
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Initial(
value: null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<CommandLogEntry>,
  ));
}


}

/// @nodoc


class _Loading extends CommandLogState {
  const _Loading({required final  List<CommandLogEntry> value}): _value = value,super._();
  

 final  List<CommandLogEntry> _value;
@override List<CommandLogEntry> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}


/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading&&const DeepCollectionEquality().equals(other._value, _value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value));

@override
String toString() {
  return 'CommandLogState.loading(value: $value)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $CommandLogStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) = __$LoadingCopyWithImpl;
@override @useResult
$Res call({
 List<CommandLogEntry> value
});




}
/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Loading(
value: null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<CommandLogEntry>,
  ));
}


}

/// @nodoc


class _Success extends CommandLogState {
  const _Success({required final  List<CommandLogEntry> value, this.selectedEntryId}): _value = value,super._();
  

 final  List<CommandLogEntry> _value;
@override List<CommandLogEntry> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}

 final  String? selectedEntryId;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._value, _value)&&(identical(other.selectedEntryId, selectedEntryId) || other.selectedEntryId == selectedEntryId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value),selectedEntryId);

@override
String toString() {
  return 'CommandLogState.success(value: $value, selectedEntryId: $selectedEntryId)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $CommandLogStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@override @useResult
$Res call({
 List<CommandLogEntry> value, String? selectedEntryId
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? selectedEntryId = freezed,}) {
  return _then(_Success(
value: null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<CommandLogEntry>,selectedEntryId: freezed == selectedEntryId ? _self.selectedEntryId : selectedEntryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Error extends CommandLogState {
  const _Error({required final  List<CommandLogEntry> value, required this.message}): _value = value,super._();
  

 final  List<CommandLogEntry> _value;
@override List<CommandLogEntry> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}

 final  String message;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&const DeepCollectionEquality().equals(other._value, _value)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value),message);

@override
String toString() {
  return 'CommandLogState.error(value: $value, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $CommandLogStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@override @useResult
$Res call({
 List<CommandLogEntry> value, String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of CommandLogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? message = null,}) {
  return _then(_Error(
value: null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<CommandLogEntry>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
