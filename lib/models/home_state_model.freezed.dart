// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeStateModel {

 bool get shizukuReady; List<AppProcessInfo> get allApps; double get totalRamKb; double get freeRamKb; double get usedRamKb; bool get isAutoUpdateEnabled; bool get isSearching; String get searchQuery; ProcessStateFilter get selectedProcessFilter; bool get sortAscending;
/// Create a copy of HomeStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateModelCopyWith<HomeStateModel> get copyWith => _$HomeStateModelCopyWithImpl<HomeStateModel>(this as HomeStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStateModel&&(identical(other.shizukuReady, shizukuReady) || other.shizukuReady == shizukuReady)&&const DeepCollectionEquality().equals(other.allApps, allApps)&&(identical(other.totalRamKb, totalRamKb) || other.totalRamKb == totalRamKb)&&(identical(other.freeRamKb, freeRamKb) || other.freeRamKb == freeRamKb)&&(identical(other.usedRamKb, usedRamKb) || other.usedRamKb == usedRamKb)&&(identical(other.isAutoUpdateEnabled, isAutoUpdateEnabled) || other.isAutoUpdateEnabled == isAutoUpdateEnabled)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedProcessFilter, selectedProcessFilter) || other.selectedProcessFilter == selectedProcessFilter)&&(identical(other.sortAscending, sortAscending) || other.sortAscending == sortAscending));
}


@override
int get hashCode => Object.hash(runtimeType,shizukuReady,const DeepCollectionEquality().hash(allApps),totalRamKb,freeRamKb,usedRamKb,isAutoUpdateEnabled,isSearching,searchQuery,selectedProcessFilter,sortAscending);

@override
String toString() {
  return 'HomeStateModel(shizukuReady: $shizukuReady, allApps: $allApps, totalRamKb: $totalRamKb, freeRamKb: $freeRamKb, usedRamKb: $usedRamKb, isAutoUpdateEnabled: $isAutoUpdateEnabled, isSearching: $isSearching, searchQuery: $searchQuery, selectedProcessFilter: $selectedProcessFilter, sortAscending: $sortAscending)';
}


}

/// @nodoc
abstract mixin class $HomeStateModelCopyWith<$Res>  {
  factory $HomeStateModelCopyWith(HomeStateModel value, $Res Function(HomeStateModel) _then) = _$HomeStateModelCopyWithImpl;
@useResult
$Res call({
 bool shizukuReady, List<AppProcessInfo> allApps, double totalRamKb, double freeRamKb, double usedRamKb, bool isAutoUpdateEnabled, bool isSearching, String searchQuery, ProcessStateFilter selectedProcessFilter, bool sortAscending
});




}
/// @nodoc
class _$HomeStateModelCopyWithImpl<$Res>
    implements $HomeStateModelCopyWith<$Res> {
  _$HomeStateModelCopyWithImpl(this._self, this._then);

  final HomeStateModel _self;
  final $Res Function(HomeStateModel) _then;

/// Create a copy of HomeStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shizukuReady = null,Object? allApps = null,Object? totalRamKb = null,Object? freeRamKb = null,Object? usedRamKb = null,Object? isAutoUpdateEnabled = null,Object? isSearching = null,Object? searchQuery = null,Object? selectedProcessFilter = null,Object? sortAscending = null,}) {
  return _then(_self.copyWith(
shizukuReady: null == shizukuReady ? _self.shizukuReady : shizukuReady // ignore: cast_nullable_to_non_nullable
as bool,allApps: null == allApps ? _self.allApps : allApps // ignore: cast_nullable_to_non_nullable
as List<AppProcessInfo>,totalRamKb: null == totalRamKb ? _self.totalRamKb : totalRamKb // ignore: cast_nullable_to_non_nullable
as double,freeRamKb: null == freeRamKb ? _self.freeRamKb : freeRamKb // ignore: cast_nullable_to_non_nullable
as double,usedRamKb: null == usedRamKb ? _self.usedRamKb : usedRamKb // ignore: cast_nullable_to_non_nullable
as double,isAutoUpdateEnabled: null == isAutoUpdateEnabled ? _self.isAutoUpdateEnabled : isAutoUpdateEnabled // ignore: cast_nullable_to_non_nullable
as bool,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,selectedProcessFilter: null == selectedProcessFilter ? _self.selectedProcessFilter : selectedProcessFilter // ignore: cast_nullable_to_non_nullable
as ProcessStateFilter,sortAscending: null == sortAscending ? _self.sortAscending : sortAscending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeStateModel].
extension HomeStateModelPatterns on HomeStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeStateModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool shizukuReady,  List<AppProcessInfo> allApps,  double totalRamKb,  double freeRamKb,  double usedRamKb,  bool isAutoUpdateEnabled,  bool isSearching,  String searchQuery,  ProcessStateFilter selectedProcessFilter,  bool sortAscending)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeStateModel() when $default != null:
return $default(_that.shizukuReady,_that.allApps,_that.totalRamKb,_that.freeRamKb,_that.usedRamKb,_that.isAutoUpdateEnabled,_that.isSearching,_that.searchQuery,_that.selectedProcessFilter,_that.sortAscending);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool shizukuReady,  List<AppProcessInfo> allApps,  double totalRamKb,  double freeRamKb,  double usedRamKb,  bool isAutoUpdateEnabled,  bool isSearching,  String searchQuery,  ProcessStateFilter selectedProcessFilter,  bool sortAscending)  $default,) {final _that = this;
switch (_that) {
case _HomeStateModel():
return $default(_that.shizukuReady,_that.allApps,_that.totalRamKb,_that.freeRamKb,_that.usedRamKb,_that.isAutoUpdateEnabled,_that.isSearching,_that.searchQuery,_that.selectedProcessFilter,_that.sortAscending);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool shizukuReady,  List<AppProcessInfo> allApps,  double totalRamKb,  double freeRamKb,  double usedRamKb,  bool isAutoUpdateEnabled,  bool isSearching,  String searchQuery,  ProcessStateFilter selectedProcessFilter,  bool sortAscending)?  $default,) {final _that = this;
switch (_that) {
case _HomeStateModel() when $default != null:
return $default(_that.shizukuReady,_that.allApps,_that.totalRamKb,_that.freeRamKb,_that.usedRamKb,_that.isAutoUpdateEnabled,_that.isSearching,_that.searchQuery,_that.selectedProcessFilter,_that.sortAscending);case _:
  return null;

}
}

}

/// @nodoc


class _HomeStateModel implements HomeStateModel {
  const _HomeStateModel({this.shizukuReady = false, final  List<AppProcessInfo> allApps = const [], this.totalRamKb = 0.0, this.freeRamKb = 0.0, this.usedRamKb = 0.0, this.isAutoUpdateEnabled = false, this.isSearching = false, this.searchQuery = '', this.selectedProcessFilter = ProcessStateFilter.all, this.sortAscending = false}): _allApps = allApps;
  

@override@JsonKey() final  bool shizukuReady;
 final  List<AppProcessInfo> _allApps;
@override@JsonKey() List<AppProcessInfo> get allApps {
  if (_allApps is EqualUnmodifiableListView) return _allApps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allApps);
}

@override@JsonKey() final  double totalRamKb;
@override@JsonKey() final  double freeRamKb;
@override@JsonKey() final  double usedRamKb;
@override@JsonKey() final  bool isAutoUpdateEnabled;
@override@JsonKey() final  bool isSearching;
@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  ProcessStateFilter selectedProcessFilter;
@override@JsonKey() final  bool sortAscending;

/// Create a copy of HomeStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateModelCopyWith<_HomeStateModel> get copyWith => __$HomeStateModelCopyWithImpl<_HomeStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeStateModel&&(identical(other.shizukuReady, shizukuReady) || other.shizukuReady == shizukuReady)&&const DeepCollectionEquality().equals(other._allApps, _allApps)&&(identical(other.totalRamKb, totalRamKb) || other.totalRamKb == totalRamKb)&&(identical(other.freeRamKb, freeRamKb) || other.freeRamKb == freeRamKb)&&(identical(other.usedRamKb, usedRamKb) || other.usedRamKb == usedRamKb)&&(identical(other.isAutoUpdateEnabled, isAutoUpdateEnabled) || other.isAutoUpdateEnabled == isAutoUpdateEnabled)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedProcessFilter, selectedProcessFilter) || other.selectedProcessFilter == selectedProcessFilter)&&(identical(other.sortAscending, sortAscending) || other.sortAscending == sortAscending));
}


@override
int get hashCode => Object.hash(runtimeType,shizukuReady,const DeepCollectionEquality().hash(_allApps),totalRamKb,freeRamKb,usedRamKb,isAutoUpdateEnabled,isSearching,searchQuery,selectedProcessFilter,sortAscending);

@override
String toString() {
  return 'HomeStateModel(shizukuReady: $shizukuReady, allApps: $allApps, totalRamKb: $totalRamKb, freeRamKb: $freeRamKb, usedRamKb: $usedRamKb, isAutoUpdateEnabled: $isAutoUpdateEnabled, isSearching: $isSearching, searchQuery: $searchQuery, selectedProcessFilter: $selectedProcessFilter, sortAscending: $sortAscending)';
}


}

/// @nodoc
abstract mixin class _$HomeStateModelCopyWith<$Res> implements $HomeStateModelCopyWith<$Res> {
  factory _$HomeStateModelCopyWith(_HomeStateModel value, $Res Function(_HomeStateModel) _then) = __$HomeStateModelCopyWithImpl;
@override @useResult
$Res call({
 bool shizukuReady, List<AppProcessInfo> allApps, double totalRamKb, double freeRamKb, double usedRamKb, bool isAutoUpdateEnabled, bool isSearching, String searchQuery, ProcessStateFilter selectedProcessFilter, bool sortAscending
});




}
/// @nodoc
class __$HomeStateModelCopyWithImpl<$Res>
    implements _$HomeStateModelCopyWith<$Res> {
  __$HomeStateModelCopyWithImpl(this._self, this._then);

  final _HomeStateModel _self;
  final $Res Function(_HomeStateModel) _then;

/// Create a copy of HomeStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shizukuReady = null,Object? allApps = null,Object? totalRamKb = null,Object? freeRamKb = null,Object? usedRamKb = null,Object? isAutoUpdateEnabled = null,Object? isSearching = null,Object? searchQuery = null,Object? selectedProcessFilter = null,Object? sortAscending = null,}) {
  return _then(_HomeStateModel(
shizukuReady: null == shizukuReady ? _self.shizukuReady : shizukuReady // ignore: cast_nullable_to_non_nullable
as bool,allApps: null == allApps ? _self._allApps : allApps // ignore: cast_nullable_to_non_nullable
as List<AppProcessInfo>,totalRamKb: null == totalRamKb ? _self.totalRamKb : totalRamKb // ignore: cast_nullable_to_non_nullable
as double,freeRamKb: null == freeRamKb ? _self.freeRamKb : freeRamKb // ignore: cast_nullable_to_non_nullable
as double,usedRamKb: null == usedRamKb ? _self.usedRamKb : usedRamKb // ignore: cast_nullable_to_non_nullable
as double,isAutoUpdateEnabled: null == isAutoUpdateEnabled ? _self.isAutoUpdateEnabled : isAutoUpdateEnabled // ignore: cast_nullable_to_non_nullable
as bool,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,selectedProcessFilter: null == selectedProcessFilter ? _self.selectedProcessFilter : selectedProcessFilter // ignore: cast_nullable_to_non_nullable
as ProcessStateFilter,sortAscending: null == sortAscending ? _self.sortAscending : sortAscending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
