import 'package:domain/domain.dart';

abstract class StocksRepository {
  Future<AssetListEntity> getAssets();
}
