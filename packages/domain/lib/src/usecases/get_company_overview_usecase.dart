import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetCompanyOverviewUseCase {
  GetCompanyOverviewUseCase(this._repository);

  final CryptoCurrenciesRepository _repository;

  Future<CompanyOverviewEntity> call({
    required String apikey,
    required String symbol,
  }) =>
      _repository.getCompanyOverview(apikey: apikey, symbol: symbol);
}
