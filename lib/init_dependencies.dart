
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'init_dependencies.config.dart'; // auto-generated file

final serviceLocator = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // optional, defaults to `init`
  preferRelativeImports: true,
  asExtension: true,
)
GetIt initDependencies() => serviceLocator.init();



//
// Future<void> initDependencies()async {
//
//   serviceLocator.registerFactory<BondDataSource>(() => BondDataSourceImpl());
//
//   serviceLocator.registerLazySingleton<BondBloc>(() => BondBloc(bondDataSource: serviceLocator()));
//
// }