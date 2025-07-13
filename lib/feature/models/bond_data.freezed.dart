// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BondData _$BondDataFromJson(Map<String, dynamic> json) {
  return _BondData.fromJson(json);
}

/// @nodoc
mixin _$BondData {
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  String get isin => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'pros_and_cons')
  Map<String, List<String>> get prosAndCons =>
      throw _privateConstructorUsedError;
  Map<String, List<Map<String, dynamic>>> get financials =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer_details')
  Map<String, dynamic> get issuerDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BondDataCopyWith<BondData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BondDataCopyWith<$Res> {
  factory $BondDataCopyWith(BondData value, $Res Function(BondData) then) =
      _$BondDataCopyWithImpl<$Res, BondData>;
  @useResult
  $Res call(
      {String logo,
      @JsonKey(name: 'company_name') String companyName,
      String isin,
      String description,
      String status,
      @JsonKey(name: 'pros_and_cons') Map<String, List<String>> prosAndCons,
      Map<String, List<Map<String, dynamic>>> financials,
      @JsonKey(name: 'issuer_details') Map<String, dynamic> issuerDetails});
}

/// @nodoc
class _$BondDataCopyWithImpl<$Res, $Val extends BondData>
    implements $BondDataCopyWith<$Res> {
  _$BondDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? isin = null,
    Object? description = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(_value.copyWith(
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _value.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      prosAndCons: null == prosAndCons
          ? _value.prosAndCons
          : prosAndCons // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      financials: null == financials
          ? _value.financials
          : financials // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Map<String, dynamic>>>,
      issuerDetails: null == issuerDetails
          ? _value.issuerDetails
          : issuerDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BondDataImplCopyWith<$Res>
    implements $BondDataCopyWith<$Res> {
  factory _$$BondDataImplCopyWith(
          _$BondDataImpl value, $Res Function(_$BondDataImpl) then) =
      __$$BondDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String logo,
      @JsonKey(name: 'company_name') String companyName,
      String isin,
      String description,
      String status,
      @JsonKey(name: 'pros_and_cons') Map<String, List<String>> prosAndCons,
      Map<String, List<Map<String, dynamic>>> financials,
      @JsonKey(name: 'issuer_details') Map<String, dynamic> issuerDetails});
}

/// @nodoc
class __$$BondDataImplCopyWithImpl<$Res>
    extends _$BondDataCopyWithImpl<$Res, _$BondDataImpl>
    implements _$$BondDataImplCopyWith<$Res> {
  __$$BondDataImplCopyWithImpl(
      _$BondDataImpl _value, $Res Function(_$BondDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? isin = null,
    Object? description = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(_$BondDataImpl(
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _value.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      prosAndCons: null == prosAndCons
          ? _value._prosAndCons
          : prosAndCons // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      financials: null == financials
          ? _value._financials
          : financials // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Map<String, dynamic>>>,
      issuerDetails: null == issuerDetails
          ? _value._issuerDetails
          : issuerDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BondDataImpl extends _BondData {
  const _$BondDataImpl(
      {required this.logo,
      @JsonKey(name: 'company_name') required this.companyName,
      required this.isin,
      required this.description,
      required this.status,
      @JsonKey(name: 'pros_and_cons')
      required final Map<String, List<String>> prosAndCons,
      required final Map<String, List<Map<String, dynamic>>> financials,
      @JsonKey(name: 'issuer_details')
      required final Map<String, dynamic> issuerDetails})
      : _prosAndCons = prosAndCons,
        _financials = financials,
        _issuerDetails = issuerDetails,
        super._();

  factory _$BondDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BondDataImplFromJson(json);

  @override
  final String logo;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  final String isin;
  @override
  final String description;
  @override
  final String status;
  final Map<String, List<String>> _prosAndCons;
  @override
  @JsonKey(name: 'pros_and_cons')
  Map<String, List<String>> get prosAndCons {
    if (_prosAndCons is EqualUnmodifiableMapView) return _prosAndCons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prosAndCons);
  }

  final Map<String, List<Map<String, dynamic>>> _financials;
  @override
  Map<String, List<Map<String, dynamic>>> get financials {
    if (_financials is EqualUnmodifiableMapView) return _financials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_financials);
  }

  final Map<String, dynamic> _issuerDetails;
  @override
  @JsonKey(name: 'issuer_details')
  Map<String, dynamic> get issuerDetails {
    if (_issuerDetails is EqualUnmodifiableMapView) return _issuerDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_issuerDetails);
  }

  @override
  String toString() {
    return 'BondData(logo: $logo, companyName: $companyName, isin: $isin, description: $description, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BondDataImpl &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._prosAndCons, _prosAndCons) &&
            const DeepCollectionEquality()
                .equals(other._financials, _financials) &&
            const DeepCollectionEquality()
                .equals(other._issuerDetails, _issuerDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      logo,
      companyName,
      isin,
      description,
      status,
      const DeepCollectionEquality().hash(_prosAndCons),
      const DeepCollectionEquality().hash(_financials),
      const DeepCollectionEquality().hash(_issuerDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BondDataImplCopyWith<_$BondDataImpl> get copyWith =>
      __$$BondDataImplCopyWithImpl<_$BondDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BondDataImplToJson(
      this,
    );
  }
}

abstract class _BondData extends BondData {
  const factory _BondData(
      {required final String logo,
      @JsonKey(name: 'company_name') required final String companyName,
      required final String isin,
      required final String description,
      required final String status,
      @JsonKey(name: 'pros_and_cons')
      required final Map<String, List<String>> prosAndCons,
      required final Map<String, List<Map<String, dynamic>>> financials,
      @JsonKey(name: 'issuer_details')
      required final Map<String, dynamic> issuerDetails}) = _$BondDataImpl;
  const _BondData._() : super._();

  factory _BondData.fromJson(Map<String, dynamic> json) =
      _$BondDataImpl.fromJson;

  @override
  String get logo;
  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  String get isin;
  @override
  String get description;
  @override
  String get status;
  @override
  @JsonKey(name: 'pros_and_cons')
  Map<String, List<String>> get prosAndCons;
  @override
  Map<String, List<Map<String, dynamic>>> get financials;
  @override
  @JsonKey(name: 'issuer_details')
  Map<String, dynamic> get issuerDetails;
  @override
  @JsonKey(ignore: true)
  _$$BondDataImplCopyWith<_$BondDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
