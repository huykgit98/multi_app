import 'package:data/data.dart' as data;
import 'package:domain/domain.dart' as domain;
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart' as shared;

/// Configures the dependencies for the application using the provided [instance] of GetIt.
///
/// This function sets up the dependencies required for the application by delegating
/// to other modules: data, domain, and shared.
///
/// - [instance]: An instance of GetIt to configure the dependencies on.
///
/// Example usage:
/// ```dart
/// GetIt getIt = GetIt.instance;
/// configureDependencies(getIt);
/// ```
void configureDependencies(GetIt instance) {
  data.configureDependencies(instance);
  domain.configureDependencies(instance);
  shared.configureDependencies(instance);
}
