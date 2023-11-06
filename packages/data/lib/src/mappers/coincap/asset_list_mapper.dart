import 'package:data/src/dto_models/dto_models.dart';
import 'package:data/src/mappers/base.dart';
import 'package:domain/domain.dart';

class AssetListMapper extends Mapper<AssetListModel, AssetListEntity> {
  /// Converts [AssetListEntity] to an instance of [AssetListModel]
  @override
  AssetListModel fromEntity(AssetListEntity entity) => AssetListModel(
        data: entity.data,
        timestamp: entity.timestamp,
      );

  /// Converts [AssetListModel] to an instance of [AssetListEntity]
  @override
  AssetListEntity toEntity(AssetListModel model) => AssetListEntity(
        data: model.data,
        timestamp: model.timestamp,
      );
}
