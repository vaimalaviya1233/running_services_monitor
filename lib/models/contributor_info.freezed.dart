// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contributor_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContributorInfo {

 String get login; String get htmlUrl; int get contributions; List<PullRequestInfo> get pullRequests;
/// Create a copy of ContributorInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContributorInfoCopyWith<ContributorInfo> get copyWith => _$ContributorInfoCopyWithImpl<ContributorInfo>(this as ContributorInfo, _$identity);

  /// Serializes this ContributorInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContributorInfo&&(identical(other.login, login) || other.login == login)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.contributions, contributions) || other.contributions == contributions)&&const DeepCollectionEquality().equals(other.pullRequests, pullRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,htmlUrl,contributions,const DeepCollectionEquality().hash(pullRequests));

@override
String toString() {
  return 'ContributorInfo(login: $login, htmlUrl: $htmlUrl, contributions: $contributions, pullRequests: $pullRequests)';
}


}

/// @nodoc
abstract mixin class $ContributorInfoCopyWith<$Res>  {
  factory $ContributorInfoCopyWith(ContributorInfo value, $Res Function(ContributorInfo) _then) = _$ContributorInfoCopyWithImpl;
@useResult
$Res call({
 String login, String htmlUrl, int contributions, List<PullRequestInfo> pullRequests
});




}
/// @nodoc
class _$ContributorInfoCopyWithImpl<$Res>
    implements $ContributorInfoCopyWith<$Res> {
  _$ContributorInfoCopyWithImpl(this._self, this._then);

  final ContributorInfo _self;
  final $Res Function(ContributorInfo) _then;

/// Create a copy of ContributorInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? htmlUrl = null,Object? contributions = null,Object? pullRequests = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,contributions: null == contributions ? _self.contributions : contributions // ignore: cast_nullable_to_non_nullable
as int,pullRequests: null == pullRequests ? _self.pullRequests : pullRequests // ignore: cast_nullable_to_non_nullable
as List<PullRequestInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [ContributorInfo].
extension ContributorInfoPatterns on ContributorInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContributorInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContributorInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContributorInfo value)  $default,){
final _that = this;
switch (_that) {
case _ContributorInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContributorInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ContributorInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  String htmlUrl,  int contributions,  List<PullRequestInfo> pullRequests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContributorInfo() when $default != null:
return $default(_that.login,_that.htmlUrl,_that.contributions,_that.pullRequests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  String htmlUrl,  int contributions,  List<PullRequestInfo> pullRequests)  $default,) {final _that = this;
switch (_that) {
case _ContributorInfo():
return $default(_that.login,_that.htmlUrl,_that.contributions,_that.pullRequests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  String htmlUrl,  int contributions,  List<PullRequestInfo> pullRequests)?  $default,) {final _that = this;
switch (_that) {
case _ContributorInfo() when $default != null:
return $default(_that.login,_that.htmlUrl,_that.contributions,_that.pullRequests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContributorInfo implements ContributorInfo {
  const _ContributorInfo({required this.login, required this.htmlUrl, required this.contributions, final  List<PullRequestInfo> pullRequests = const []}): _pullRequests = pullRequests;
  factory _ContributorInfo.fromJson(Map<String, dynamic> json) => _$ContributorInfoFromJson(json);

@override final  String login;
@override final  String htmlUrl;
@override final  int contributions;
 final  List<PullRequestInfo> _pullRequests;
@override@JsonKey() List<PullRequestInfo> get pullRequests {
  if (_pullRequests is EqualUnmodifiableListView) return _pullRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pullRequests);
}


/// Create a copy of ContributorInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContributorInfoCopyWith<_ContributorInfo> get copyWith => __$ContributorInfoCopyWithImpl<_ContributorInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContributorInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContributorInfo&&(identical(other.login, login) || other.login == login)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.contributions, contributions) || other.contributions == contributions)&&const DeepCollectionEquality().equals(other._pullRequests, _pullRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,htmlUrl,contributions,const DeepCollectionEquality().hash(_pullRequests));

@override
String toString() {
  return 'ContributorInfo(login: $login, htmlUrl: $htmlUrl, contributions: $contributions, pullRequests: $pullRequests)';
}


}

/// @nodoc
abstract mixin class _$ContributorInfoCopyWith<$Res> implements $ContributorInfoCopyWith<$Res> {
  factory _$ContributorInfoCopyWith(_ContributorInfo value, $Res Function(_ContributorInfo) _then) = __$ContributorInfoCopyWithImpl;
@override @useResult
$Res call({
 String login, String htmlUrl, int contributions, List<PullRequestInfo> pullRequests
});




}
/// @nodoc
class __$ContributorInfoCopyWithImpl<$Res>
    implements _$ContributorInfoCopyWith<$Res> {
  __$ContributorInfoCopyWithImpl(this._self, this._then);

  final _ContributorInfo _self;
  final $Res Function(_ContributorInfo) _then;

/// Create a copy of ContributorInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? htmlUrl = null,Object? contributions = null,Object? pullRequests = null,}) {
  return _then(_ContributorInfo(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,contributions: null == contributions ? _self.contributions : contributions // ignore: cast_nullable_to_non_nullable
as int,pullRequests: null == pullRequests ? _self._pullRequests : pullRequests // ignore: cast_nullable_to_non_nullable
as List<PullRequestInfo>,
  ));
}


}


/// @nodoc
mixin _$PullRequestInfo {

 int get number; String get title; String get htmlUrl;
/// Create a copy of PullRequestInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PullRequestInfoCopyWith<PullRequestInfo> get copyWith => _$PullRequestInfoCopyWithImpl<PullRequestInfo>(this as PullRequestInfo, _$identity);

  /// Serializes this PullRequestInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PullRequestInfo&&(identical(other.number, number) || other.number == number)&&(identical(other.title, title) || other.title == title)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,title,htmlUrl);

@override
String toString() {
  return 'PullRequestInfo(number: $number, title: $title, htmlUrl: $htmlUrl)';
}


}

/// @nodoc
abstract mixin class $PullRequestInfoCopyWith<$Res>  {
  factory $PullRequestInfoCopyWith(PullRequestInfo value, $Res Function(PullRequestInfo) _then) = _$PullRequestInfoCopyWithImpl;
@useResult
$Res call({
 int number, String title, String htmlUrl
});




}
/// @nodoc
class _$PullRequestInfoCopyWithImpl<$Res>
    implements $PullRequestInfoCopyWith<$Res> {
  _$PullRequestInfoCopyWithImpl(this._self, this._then);

  final PullRequestInfo _self;
  final $Res Function(PullRequestInfo) _then;

/// Create a copy of PullRequestInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? title = null,Object? htmlUrl = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PullRequestInfo].
extension PullRequestInfoPatterns on PullRequestInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PullRequestInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PullRequestInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PullRequestInfo value)  $default,){
final _that = this;
switch (_that) {
case _PullRequestInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PullRequestInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PullRequestInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  String title,  String htmlUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PullRequestInfo() when $default != null:
return $default(_that.number,_that.title,_that.htmlUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  String title,  String htmlUrl)  $default,) {final _that = this;
switch (_that) {
case _PullRequestInfo():
return $default(_that.number,_that.title,_that.htmlUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  String title,  String htmlUrl)?  $default,) {final _that = this;
switch (_that) {
case _PullRequestInfo() when $default != null:
return $default(_that.number,_that.title,_that.htmlUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PullRequestInfo implements PullRequestInfo {
  const _PullRequestInfo({required this.number, required this.title, required this.htmlUrl});
  factory _PullRequestInfo.fromJson(Map<String, dynamic> json) => _$PullRequestInfoFromJson(json);

@override final  int number;
@override final  String title;
@override final  String htmlUrl;

/// Create a copy of PullRequestInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PullRequestInfoCopyWith<_PullRequestInfo> get copyWith => __$PullRequestInfoCopyWithImpl<_PullRequestInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PullRequestInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PullRequestInfo&&(identical(other.number, number) || other.number == number)&&(identical(other.title, title) || other.title == title)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,title,htmlUrl);

@override
String toString() {
  return 'PullRequestInfo(number: $number, title: $title, htmlUrl: $htmlUrl)';
}


}

/// @nodoc
abstract mixin class _$PullRequestInfoCopyWith<$Res> implements $PullRequestInfoCopyWith<$Res> {
  factory _$PullRequestInfoCopyWith(_PullRequestInfo value, $Res Function(_PullRequestInfo) _then) = __$PullRequestInfoCopyWithImpl;
@override @useResult
$Res call({
 int number, String title, String htmlUrl
});




}
/// @nodoc
class __$PullRequestInfoCopyWithImpl<$Res>
    implements _$PullRequestInfoCopyWith<$Res> {
  __$PullRequestInfoCopyWithImpl(this._self, this._then);

  final _PullRequestInfo _self;
  final $Res Function(_PullRequestInfo) _then;

/// Create a copy of PullRequestInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? title = null,Object? htmlUrl = null,}) {
  return _then(_PullRequestInfo(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
