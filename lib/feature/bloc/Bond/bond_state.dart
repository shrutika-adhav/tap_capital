part of 'bond_bloc.dart';

@immutable
sealed class BondState {}

final class BondInitial extends BondState {}

final class BondLoading extends BondState{}

final class GetAllBondsSuccessState extends BondState{
  final List<Bond> bondsList;
  GetAllBondsSuccessState({required this.bondsList});
}

final class GetBondDetailsSuccessState extends BondState{
  final BondData bondDetails;
  GetBondDetailsSuccessState({required this.bondDetails});
}

final class BondFailureState extends BondState{
  final String message;
  BondFailureState({required this.message});
}
