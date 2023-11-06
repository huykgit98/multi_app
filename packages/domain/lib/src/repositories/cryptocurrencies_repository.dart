import 'package:domain/domain.dart';

abstract class CryptoCurrenciesRepository {
  Future<CompanyOverviewEntity> getCompanyOverview({
    required String apikey,
    required String symbol,
  });
}
