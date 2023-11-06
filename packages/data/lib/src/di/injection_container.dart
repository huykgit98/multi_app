import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data/src/datasources/datasources.dart';
import 'package:data/src/utils/network_interceptor.dart';
import 'package:data/src/utils/token_interceptor.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection_container.config.dart' as config;

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $initGetIt(getIt);

Future<void> $initGetIt(GetIt getIt) async {
  var alphavantageBaseUrl = 'https://www.alphavantage.co/';
  var coincapBaseUrl = 'https://api.coincap.io/v2/';

  final dtoDio = dio.Dio();
  dtoDio.interceptors.addAll([TokenInterceptor(), NetworkInterceptor()]);

  await getIt.reset();

  getIt
    ..registerLazySingleton(
      () => AlphaVantageProvider(dtoDio, baseUrl: alphavantageBaseUrl),
    )
    ..registerLazySingleton(
        () => CoinCapProvider(dtoDio, baseUrl: coincapBaseUrl))
    ..registerLazySingleton(Connectivity.new);
  config.$initGetIt(getIt);
}
