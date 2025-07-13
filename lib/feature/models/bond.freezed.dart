// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bond _$BondFromJson(Map<String, dynamic> json) {
  return _Bond.fromJson(json);
}

/// @nodoc
mixin _$Bond {
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get isin => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BondCopyWith<Bond> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BondCopyWith<$Res> {
  factory $BondCopyWith(Bond value, $Res Function(Bond) then) =
      _$BondCopyWithImpl<$Res, Bond>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_name') String companyName,
      String logo,
      String isin,
      String rating,
      List<String> tags});
}

/// @nodoc
class _$BondCopyWithImpl<$Res, $Val extends Bond>
    implements $BondCopyWith<$Res> {
  _$BondCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? logo = null,
    Object? isin = null,
    Object? rating = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _value.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BondImplCopyWith<$Res> implements $BondCopyWith<$Res> {
  factory _$$BondImplCopyWith(
          _$BondImpl value, $Res Function(_$BondImpl) then) =
      __$$BondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_name') String companyName,
      String logo,
      String isin,
      String rating,
      List<String> tags});
}

/// @nodoc
class __$$BondImplCopyWithImpl<$Res>
    extends _$BondCopyWithImpl<$Res, _$BondImpl>
    implements _$$BondImplCopyWith<$Res> {
  __$$BondImplCopyWithImpl(_$BondImpl _value, $Res Function(_$BondImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? logo = null,
    Object? isin = null,
    Object? rating = null,
    Object? tags = null,
  }) {
    return _then(_$BondImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _value.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BondImpl extends _Bond {
  const _$BondImpl(
      {@JsonKey(name: 'company_name') required this.companyName,
      required this.logo,
      required this.isin,
      required this.rating,
      required final List<String> tags})
      : _tags = tags,
        super._();

  factory _$BondImpl.fromJson(Map<String, dynamic> json) =>
      _$$BondImplFromJson(json);

  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  final String logo;
  @override
  final String isin;
  @override
  final String rating;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Bond(companyName: $companyName, logo: $logo, isin: $isin, rating: $rating, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BondImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, companyName, logo, isin, rating,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BondImplCopyWith<_$BondImpl> get copyWith =>
      __$$BondImplCopyWithImpl<_$BondImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BondImplToJson(
      this,
    );
  }
}

abstract class _Bond extends Bond {
  const factory _Bond(
      {@JsonKey(name: 'company_name') required final String companyName,
      required final String logo,
      required final String isin,
      required final String rating,
      required final List<String> tags}) = _$BondImpl;
  const _Bond._() : super._();

  factory _Bond.fromJson(Map<String, dynamic> json) = _$BondImpl.fromJson;

  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  String get logo;
  @override
  String get isin;
  @override
  String get rating;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$BondImplCopyWith<_$BondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
