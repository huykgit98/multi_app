import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetCompanyOverviewUseCase {
  GetCompanyOverviewUseCase(this._repository);

  final CryptoCurrenciesRepository _repository;

  Future<CompanyOverviewEntity> call(int id) =>
      _repository.getCompanyOverview(apikey: '', symbol: '');
}
