
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond.freezed.dart';
part 'bond.g.dart';

@Freezed()
class Bond with _$Bond{

  const factory Bond({
    @JsonKey(name: 'company_name') required String companyName,
    required String logo,
    required String isin,
    required String rating,
    required List<String> tags

  }) = _Bond;

  factory Bond.fromJson(Map<String, dynamic> json)
    => _$BondFromJson(json);

  const Bond._();

  String get logo => logo;

  String get isin => isin;

  String get rating => rating;

  List<String> get tags => tags;

  String get companyName => companyName;

}
