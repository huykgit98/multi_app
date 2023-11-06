import 'package:data/src/dto_models/dto_models.dart';
import 'package:data/src/mappers/base.dart';
import 'package:domain/domain.dart';

class CompanyOverviewMapper
    extends Mapper<CompanyOverviewModel, CompanyOverviewEntity> {
  /// Converts [CompanyOverviewEntity] to an instance of [CompanyOverviewModel]
  @override
  CompanyOverviewModel fromEntity(CompanyOverviewEntity entity) =>
      CompanyOverviewModel(
        symbol: entity.symbol,
        assetType: entity.assetType,
        name: entity.name,
        description: entity.description,
        cik: entity.cik,
        exchange: entity.exchange,
        currency: entity.currency,
        country: entity.country,
        sector: entity.sector,
        industry: entity.industry,
        address: entity.address,
        fiscalYearEnd: entity.fiscalYearEnd,
        latestQuarter: entity.latestQuarter,
        marketCapitalization: entity.marketCapitalization,
        ebitda: entity.ebitda,
        peRatio: entity.peRatio,
        pegRatio: entity.pegRatio,
        bookValue: entity.bookValue,
        dividendPerShare: entity.dividendPerShare,
        dividendYield: entity.dividendYield,
        eps: entity.eps,
        revenuePerShareTtm: entity.revenuePerShareTtm,
        profitMargin: entity.profitMargin,
        operatingMarginTtm: entity.operatingMarginTtm,
        returnOnAssetsTtm: entity.returnOnAssetsTtm,
        returnOnEquityTtm: entity.returnOnEquityTtm,
        revenueTtm: entity.revenueTtm,
        grossProfitTtm: entity.grossProfitTtm,
        dilutedEpsttm: entity.dilutedEpsttm,
        quarterlyEarningsGrowthYoy: entity.quarterlyEarningsGrowthYoy,
        quarterlyRevenueGrowthYoy: entity.quarterlyRevenueGrowthYoy,
        analystTargetPrice: entity.analystTargetPrice,
        trailingPe: entity.trailingPe,
        forwardPe: entity.forwardPe,
        priceToSalesRatioTtm: entity.priceToSalesRatioTtm,
        priceToBookRatio: entity.priceToBookRatio,
        evToRevenue: entity.evToRevenue,
        evToEbitda: entity.evToEbitda,
        beta: entity.beta,
        the52WeekHigh: entity.the52WeekHigh,
        the52WeekLow: entity.the52WeekLow,
        the50DayMovingAverage: entity.the50DayMovingAverage,
        the200DayMovingAverage: entity.the200DayMovingAverage,
        sharesOutstanding: entity.sharesOutstanding,
        dividendDate: entity.dividendDate,
        exDividendDate: entity.exDividendDate,
      );

  /// Converts [CompanyOverviewModel] to an instance of [CompanyOverviewEntity]
  @override
  CompanyOverviewEntity toEntity(CompanyOverviewModel model) =>
      CompanyOverviewEntity(
        symbol: model.symbol,
        assetType: model.assetType,
        name: model.name,
        description: model.description,
        cik: model.cik,
        exchange: model.exchange,
        currency: model.currency,
        country: model.country,
        sector: model.sector,
        industry: model.industry,
        address: model.address,
        fiscalYearEnd: model.fiscalYearEnd,
        latestQuarter: model.latestQuarter,
        marketCapitalization: model.marketCapitalization,
        ebitda: model.ebitda,
        peRatio: model.peRatio,
        pegRatio: model.pegRatio,
        bookValue: model.bookValue,
        dividendPerShare: model.dividendPerShare,
        dividendYield: model.dividendYield,
        eps: model.eps,
        revenuePerShareTtm: model.revenuePerShareTtm,
        profitMargin: model.profitMargin,
        operatingMarginTtm: model.operatingMarginTtm,
        returnOnAssetsTtm: model.returnOnAssetsTtm,
        returnOnEquityTtm: model.returnOnEquityTtm,
        revenueTtm: model.revenueTtm,
        grossProfitTtm: model.grossProfitTtm,
        dilutedEpsttm: model.dilutedEpsttm,
        quarterlyEarningsGrowthYoy: model.quarterlyEarningsGrowthYoy,
        quarterlyRevenueGrowthYoy: model.quarterlyRevenueGrowthYoy,
        analystTargetPrice: model.analystTargetPrice,
        trailingPe: model.trailingPe,
        forwardPe: model.forwardPe,
        priceToSalesRatioTtm: model.priceToSalesRatioTtm,
        priceToBookRatio: model.priceToBookRatio,
        evToRevenue: model.evToRevenue,
        evToEbitda: model.evToEbitda,
        beta: model.beta,
        the52WeekHigh: model.the52WeekHigh,
        the52WeekLow: model.the52WeekLow,
        the50DayMovingAverage: model.the50DayMovingAverage,
        the200DayMovingAverage: model.the200DayMovingAverage,
        sharesOutstanding: model.sharesOutstanding,
        dividendDate: model.dividendDate,
        exDividendDate: model.exDividendDate,
      );
}
