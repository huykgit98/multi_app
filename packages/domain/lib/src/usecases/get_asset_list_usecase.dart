import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetAssetListUseCase {
  GetAssetListUseCase(this._repository);

  final StocksRepository _repository;

  Future<AssetListEntity> call(int id) => _repository.getAssets();
}
