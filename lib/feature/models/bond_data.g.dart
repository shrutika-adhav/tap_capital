// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BondDataImpl _$$BondDataImplFromJson(Map<String, dynamic> json) =>
    _$BondDataImpl(
      logo: json['logo'] as String,
      companyName: json['company_name'] as String,
      isin: json['isin'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      prosAndCons: (json['pros_and_cons'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      financials: (json['financials'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => e as Map<String, dynamic>)
                .toList()),
      ),
      issuerDetails: json['issuer_details'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$BondDataImplToJson(_$BondDataImpl instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'company_name': instance.companyName,
      'isin': instance.isin,
      'description': instance.description,
      'status': instance.status,
      'pros_and_cons': instance.prosAndCons,
      'financials': instance.financials,
      'issuer_details': instance.issuerDetails,
    };
