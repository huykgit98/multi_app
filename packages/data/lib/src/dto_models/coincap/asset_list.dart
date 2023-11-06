import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_list.freezed.dart';
part 'asset_list.g.dart';

@freezed
class AssetListModel with _$AssetListModel {
  const factory AssetListModel({
    required List<Map<String, String>> data,
    required int timestamp,
  }) = _AssetListModel;

  factory AssetListModel.fromJson(Map<String, Object?> json) =>
      _$AssetListModelFromJson(json);
}
