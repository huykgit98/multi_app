import 'package:get_it/get_it.dart';
import 'package:initializer/initializer.dart' as di;
import 'package:injectable/injectable.dart';

import 'injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
)
void configureDependencies() {
  getIt.init();
  di.configureDependencies(getIt);
}
