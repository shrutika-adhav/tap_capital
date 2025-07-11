import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_capital/feature/models/bond.dart';

import '../../repositories/bond_repository.dart';
import '../../models/bond_data.dart';

part 'bond_event.dart';
part 'bond_state.dart';


@injectable
class BondBloc extends Bloc<BondEvent, BondState> {

  final BondRepository _bondRepository;

  BondBloc(
      {required BondRepository bondRepository}) :
      _bondRepository = bondRepository,
      super(BondInitial()) {
        on<BondEvent>((event, emit) => emit(BondLoading()));
        on<GetAllBondsEvent>(_onGetAllBondsEvent);
        on<GetBondDetailsEvent>(_onGetBondDetailsEvent);
      }



      void _onGetAllBondsEvent(GetAllBondsEvent event, Emitter<BondState> emit)async{

        final result = await _bondRepository.getAllBonds();

        result.fold(
                (error) => emit(BondFailureState(message: error.message)),
                (bond) => emit(GetAllBondsSuccessState(bondsList: bond)));

      }

  void _onGetBondDetailsEvent(GetBondDetailsEvent event, Emitter<BondState> emit)async{

    final result = await _bondRepository.getBondDetails();

    result.fold(
      (error) => emit(BondFailureState(message: error.message)),
      (bondDetails) => emit(GetBondDetailsSuccessState(bondDetails: bondDetails))
    );

  }


}
