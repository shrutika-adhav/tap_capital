// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'feature/bloc/Bond/bond_bloc.dart' as _i464;
import 'feature/repositories/bond_repository.dart' as _i655;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i655.BondRepository>(() => _i655.BondRepositoryImpl());
    gh.singleton<_i464.BondBloc>(
        () => _i464.BondBloc(bondRepository: gh<_i655.BondRepository>()));
    return this;
  }
}
