import 'package:data/src/dto_models/dto_models.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'alphavantage_provider.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed')
abstract class AlphaVantageProvider {
  @factoryMethod
  factory AlphaVantageProvider(Dio dio, {String baseUrl}) =
      _AlphaVantageProvider;

  ///This API returns the company information, financial ratios,
  ///and other key metrics for the equity specified.
  ///Data is generally refreshed on the same day a company reports its latest earnings and financials.
  @GET('/query?function=OVERVIEW&symbol={symbol}}&apikey={apikey}')
  Future<CompanyOverviewModel> getCompanyOverview(
      {@Path('apikey') required String apikey,
      @Path('symbol') required String symbol});
}
