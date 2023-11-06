import 'package:data/src/datasources/datasources.dart';
import 'package:data/src/mappers/mappers.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: StocksRepository)
class StocksRepositoryImpl extends StocksRepository {
  StocksRepositoryImpl(
    this._remoteDataSource,
    this._assetListMapper,
  );

  final CoinCapProvider _remoteDataSource;
  final AssetListMapper _assetListMapper;

  @override
  Future<AssetListEntity> getAssets() async {
    final resp = await _remoteDataSource.getAssets();
    return _assetListMapper.toEntity(resp);
  }
}
