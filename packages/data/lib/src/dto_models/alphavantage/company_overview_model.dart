import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_overview_model.freezed.dart';
part 'company_overview_model.g.dart';

@freezed
class CompanyOverviewModel with _$CompanyOverviewModel {
  const factory CompanyOverviewModel({
    required String symbol,
    required String assetType,
    required String name,
    required String description,
    required String cik,
    required String exchange,
    required String currency,
    required String country,
    required String sector,
    required String industry,
    required String address,
    required String fiscalYearEnd,
    required DateTime latestQuarter,
    required String marketCapitalization,
    required String ebitda,
    required String peRatio,
    required String pegRatio,
    required String bookValue,
    required String dividendPerShare,
    required String dividendYield,
    required String eps,
    required String revenuePerShareTtm,
    required String profitMargin,
    required String operatingMarginTtm,
    required String returnOnAssetsTtm,
    required String returnOnEquityTtm,
    required String revenueTtm,
    required String grossProfitTtm,
    required String dilutedEpsttm,
    required String quarterlyEarningsGrowthYoy,
    required String quarterlyRevenueGrowthYoy,
    required String analystTargetPrice,
    required String trailingPe,
    required String forwardPe,
    required String priceToSalesRatioTtm,
    required String priceToBookRatio,
    required String evToRevenue,
    required String evToEbitda,
    required String beta,
    required String the52WeekHigh,
    required String the52WeekLow,
    required String the50DayMovingAverage,
    required String the200DayMovingAverage,
    required String sharesOutstanding,
    required String dividendDate,
    required String exDividendDate,
  }) = _CompanyOverviewModel;

  factory CompanyOverviewModel.fromJson(Map<String, Object?> json) =>
      _$CompanyOverviewModelFromJson(json);
}
