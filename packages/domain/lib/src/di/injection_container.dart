import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection_container.config.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies(GetIt instance) => init(instance);

// @module
// abstract class RegisterModule {
//   @lazySingleton
//   CryptoCurrenciesRepository get cryptoCurrenciesRepository;
//   @lazySingleton
//   StocksRepository get stocksRepository;
// }
