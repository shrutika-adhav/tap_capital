part of 'bond_bloc.dart';

@immutable
sealed class BondEvent {}

class GetAllBondsEvent extends BondEvent {}

class GetBondDetailsEvent extends BondEvent {}
