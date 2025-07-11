// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BondImpl _$$BondImplFromJson(Map<String, dynamic> json) => _$BondImpl(
      companyName: json['company_name'] as String,
      logo: json['logo'] as String,
      isin: json['isin'] as String,
      rating: json['rating'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BondImplToJson(_$BondImpl instance) =>
    <String, dynamic>{
      'company_name': instance.companyName,
      'logo': instance.logo,
      'isin': instance.isin,
      'rating': instance.rating,
      'tags': instance.tags,
    };
