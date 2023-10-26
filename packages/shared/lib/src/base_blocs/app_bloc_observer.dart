import 'dart:developer';

import 'package:bloc/bloc.dart';

/// A custom [BlocObserver] for observing and tracking BLoC events, transitions, and errors
/// in the Flutter application.
///
/// This observer allows you to monitor the behavior of BLoCs throughout your app,
/// providing visibility into state changes, transitions, and errors.
///
/// Example usage:
/// ```dart
/// void main() {
///   Bloc.observer = AppBlocObserver();
///   runApp(MyApp());
/// }
/// ```
class AppBlocObserver extends BlocObserver {
  /// Creates an instance of [AppBlocObserver].
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    log('onTransition(${bloc.runtimeType}, $transition)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
