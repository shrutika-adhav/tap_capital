
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_capital/init_dependencies.config.dart';

final serviceLocator = GetIt.instance;

@InjectableInit(
  initializerName: "init",
  preferRelativeImports: true,
  asExtension: true
)

void initDependencies() => serviceLocator.init();


//
//
// Future<void> initDependencies()async {
//
//   serviceLocator.registerFactory<BondDataSource>(() => BondDataSourceImpl());
//
//   serviceLocator.registerLazySingleton<BondBloc>(() => BondBloc(bondDataSource: serviceLocator()));
//
// }