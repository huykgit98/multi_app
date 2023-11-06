import 'package:data/src/dto_models/dto_models.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'coincap_provider.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed')
abstract class CoinCapProvider {
  @factoryMethod
  factory CoinCapProvider(Dio dio, {String baseUrl}) = _CoinCapProvider;

  @GET('/assets')
  Future<CompanyOverviewModel> getAssets();
}
