import 'package:data/src/datasources/datasources.dart';
import 'package:data/src/mappers/mappers.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CryptoCurrenciesRepository)
class CryptocurrenciesRepositoryImpl extends CryptoCurrenciesRepository {
  CryptocurrenciesRepositoryImpl(
    this._remoteDataSource,
    this._companyOverviewMapper,
  );

  final AlphaVantageProvider _remoteDataSource;
  final CompanyOverviewMapper _companyOverviewMapper;

  @override
  Future<CompanyOverviewEntity> getCompanyOverview({
    required String apikey,
    required String symbol,
  }) async {
    final resp = await _remoteDataSource.getCompanyOverview(
        apikey: apikey, symbol: symbol);
    return _companyOverviewMapper.toEntity(resp);
  }
}
