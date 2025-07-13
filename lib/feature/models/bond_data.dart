
import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_data.freezed.dart';
part 'bond_data.g.dart';

@Freezed()
class BondData with _$BondData{

  const factory BondData({

    required String logo,
    @JsonKey(name: 'company_name') required String companyName,
    required String isin,
    required String description,
    required String status,
    @JsonKey(name: 'pros_and_cons') required Map<String, List<String>> prosAndCons,
    required Map<String, List<Map<String, dynamic>>> financials,
    @JsonKey(name: 'issuer_details') required Map<String, dynamic> issuerDetails


  }) = _BondData;

  factory BondData.fromJson(Map<String, dynamic> json)
    => _$BondDataFromJson(json);

  const BondData._();

  String get logo => logo;

  String get companyName => companyName;

  String get isin => isin;

  String get description => description;

  String get status => status;

  Map<String, List<String>> get prosAndCons => prosAndCons;

  Map<String, List<Map<String, dynamic>>> get financials => financials;

  Map<String, dynamic> get issuerDetails => issuerDetails;

}
