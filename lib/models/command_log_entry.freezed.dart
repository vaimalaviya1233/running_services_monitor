// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_log_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommandLogEntry {

 String get id; String get command; String get output; DateTime get timestamp; bool get isSuccess;
/// Create a copy of CommandLogEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandLogEntryCopyWith<CommandLogEntry> get copyWith => _$CommandLogEntryCopyWithImpl<CommandLogEntry>(this as CommandLogEntry, _$identity);

  /// Serializes this CommandLogEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandLogEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.command, command) || other.command == command)&&(identical(other.output, output) || other.output == output)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,command,output,timestamp,isSuccess);

@override
String toString() {
  return 'CommandLogEntry(id: $id, command: $command, output: $output, timestamp: $timestamp, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $CommandLogEntryCopyWith<$Res>  {
  factory $CommandLogEntryCopyWith(CommandLogEntry value, $Res Function(CommandLogEntry) _then) = _$CommandLogEntryCopyWithImpl;
@useResult
$Res call({
 String id, String command, String output, DateTime timestamp, bool isSuccess
});




}
/// @nodoc
class _$CommandLogEntryCopyWithImpl<$Res>
    implements $CommandLogEntryCopyWith<$Res> {
  _$CommandLogEntryCopyWithImpl(this._self, this._then);

  final CommandLogEntry _self;
  final $Res Function(CommandLogEntry) _then;

/// Create a copy of CommandLogEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? command = null,Object? output = null,Object? timestamp = null,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommandLogEntry].
extension CommandLogEntryPatterns on CommandLogEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandLogEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandLogEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandLogEntry value)  $default,){
final _that = this;
switch (_that) {
case _CommandLogEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandLogEntry value)?  $default,){
final _that = this;
switch (_that) {
case _CommandLogEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String command,  String output,  DateTime timestamp,  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandLogEntry() when $default != null:
return $default(_that.id,_that.command,_that.output,_that.timestamp,_that.isSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String command,  String output,  DateTime timestamp,  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _CommandLogEntry():
return $default(_that.id,_that.command,_that.output,_that.timestamp,_that.isSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String command,  String output,  DateTime timestamp,  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _CommandLogEntry() when $default != null:
return $default(_that.id,_that.command,_that.output,_that.timestamp,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommandLogEntry implements CommandLogEntry {
  const _CommandLogEntry({required this.id, required this.command, required this.output, required this.timestamp, this.isSuccess = true});
  factory _CommandLogEntry.fromJson(Map<String, dynamic> json) => _$CommandLogEntryFromJson(json);

@override final  String id;
@override final  String command;
@override final  String output;
@override final  DateTime timestamp;
@override@JsonKey() final  bool isSuccess;

/// Create a copy of CommandLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandLogEntryCopyWith<_CommandLogEntry> get copyWith => __$CommandLogEntryCopyWithImpl<_CommandLogEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommandLogEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandLogEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.command, command) || other.command == command)&&(identical(other.output, output) || other.output == output)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,command,output,timestamp,isSuccess);

@override
String toString() {
  return 'CommandLogEntry(id: $id, command: $command, output: $output, timestamp: $timestamp, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$CommandLogEntryCopyWith<$Res> implements $CommandLogEntryCopyWith<$Res> {
  factory _$CommandLogEntryCopyWith(_CommandLogEntry value, $Res Function(_CommandLogEntry) _then) = __$CommandLogEntryCopyWithImpl;
@override @useResult
$Res call({
 String id, String command, String output, DateTime timestamp, bool isSuccess
});




}
/// @nodoc
class __$CommandLogEntryCopyWithImpl<$Res>
    implements _$CommandLogEntryCopyWith<$Res> {
  __$CommandLogEntryCopyWithImpl(this._self, this._then);

  final _CommandLogEntry _self;
  final $Res Function(_CommandLogEntry) _then;

/// Create a copy of CommandLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? command = null,Object? output = null,Object? timestamp = null,Object? isSuccess = null,}) {
  return _then(_CommandLogEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
