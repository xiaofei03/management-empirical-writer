# Common Control Variables

Use this reference as a reusable baseline when the paper uses listed-company data, enterprise panel data, governance variables, financing-constraint measures, or heterogeneity splits common in Chinese empirical management and accounting research.

## Usage Rules

- This is a general reference, not a mandatory variable specification.
- Do not assume every project should use every variable listed here.
- Always prioritize the user's Stata code, data dictionary, regression table notes, and project-specific variable definitions.
- If a project-specific definition differs from this file, report the discrepancy and ask the user to confirm the intended definition.
- During cognitive alignment, build a control variable mapping table rather than guessing variable meanings from variable names alone.

## Table Schema

Columns:

- `category`: broad use case or variable family
- `chinese_name`: common Chinese label used in empirical papers
- `variable_name`: common Stata-style variable name or field label
- `definition_cn`: Chinese definition
- `definition_en`: English definition for bilingual drafting
- `notes`: use conditions, alternative operationalizations, caveats, or source hints

## Financial Characteristics

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 财务特征 | 公司规模 | Size | 年总资产的自然对数 | Natural logarithm of annual total assets | Often used as the default firm size control. |
| 财务特征 | 资产负债率 | Lev | 年末总负债 / 年末总资产 | Year-end total liabilities divided by year-end total assets | Common leverage measure. |
| 财务特征 | 权益乘数1 | EM1 | 年末总资产 / 年末所有者权益 | Year-end total assets divided by year-end shareholders' equity | Alternative leverage-style control. |
| 财务特征 | 权益乘数2 | EM2 | 总资产平均余额 / 所有者权益平均余额 | Average total assets divided by average shareholders' equity | Uses average balances rather than ending balances. |
| 财务特征 | 产权比率 | DER | 年末总负债 / 年末所有者权益 | Year-end total liabilities divided by year-end shareholders' equity | Debt-to-equity ratio. |
| 财务特征 | 长期资本负债率 | DLCR | 非流动负债 / (所有者权益 + 非流动负债) | Non-current liabilities divided by the sum of shareholders' equity and non-current liabilities | Captures long-term capital structure. |
| 财务特征 | 流动比率 | Liquid | 流动资产 / 流动负债 | Current assets divided by current liabilities | Liquidity control. |
| 财务特征 | 速动比率 | Quick | (流动资产 - 存货) / 流动负债 | Quick assets divided by current liabilities | More conservative liquidity measure. |
| 财务特征 | 现金流比率 | Cashflow | 经营活动产生的现金流量净额 / 总资产 | Net cash flow from operating activities divided by total assets | Sometimes labeled operating cash flow intensity. |
| 财务特征 | 应收账款占比 | REC | 应收账款净额 / 总资产 | Net accounts receivable divided by total assets | Asset structure control. |
| 财务特征 | 存货占比 | INV | 存货净额 / 总资产 | Net inventory divided by total assets | Asset structure control. |
| 财务特征 | 固定资产占比 | FIXED | 固定资产净额 / 总资产 | Net fixed assets divided by total assets | Tangible asset intensity proxy. |
| 财务特征 | 无形资产占比 | Intangible | 无形资产净额 / 总资产 | Net intangible assets divided by total assets | Often relevant in innovation or digitalization settings. |
| 财务特征 | 有形资产占比 | Tangible | (资产总额 - 无形资产净值 - 商誉净额) / 总资产 | Total tangible assets divided by total assets, defined as total assets minus net intangible assets and net goodwill, scaled by total assets | Check whether the project subtracts goodwill explicitly. |
| 财务特征 | 资本密集度 | CAP | 总资产 / 营业收入 | Total assets divided by operating revenue | Sometimes used in industrial organization style studies. |
| 财务特征 | 财务杠杆 | FL | （净利润 + 所得税费用 + 财务费用）/（净利润 + 所得税费用） | Financial leverage, defined as (net profit + income tax expense + financial expense) divided by (net profit + income tax expense) | Verify exact accounting items in project code. |
| 财务特征 | 经营杠杆 | OL | （净利润 + 所得税费用 + 财务费用 + 固定资产折旧、油气资产折耗、生产性生物资产折旧 + 无形资产摊销 + 长期待摊费用摊销）/（净利润 + 所得税费用 + 财务费用） | Operating leverage, defined as earnings plus tax, finance cost, depreciation, depletion, and amortization, divided by earnings plus tax and finance cost | Formula may vary across papers. |
| 财务特征 | 综合杠杆 | CL | 财务杠杆 × 经营杠杆 | Combined leverage, defined as financial leverage multiplied by operating leverage | Derived measure. |
| 财务特征 | 投资水平1 | Invest1 | 构建固定资产、无形资产和其他长期资产支付的现金 / 期初总资产 | Cash paid for fixed, intangible, and other long-term assets divided by beginning total assets | Investment intensity proxy. |
| 财务特征 | 投资水平2 | Invest2 | (构建固定资产、无形资产和其他长期资产支付的现金 + 取得子公司及其他营业单位支付的现金净额) / 期初总资产 | Cash paid for long-term assets plus net cash paid for acquiring subsidiaries or business units, divided by beginning total assets | Broader investment measure. |
| 财务特征 | 投资水平3 | Invest3 | (构建固定资产、无形资产和其他长期资产支付的现金 - 处置固定资产、无形资产和其他长期资产收回的现金净额) / 期初总资产 | Net cash outflow for long-term assets divided by beginning total assets | Net investment measure. |
| 财务特征 | 投资水平4 | Invest4 | (构建固定资产、无形资产和其他长期资产支付的现金 + 取得子公司及其他营业单位支付的现金净额 - 处置固定资产、无形资产和其他长期资产收回的现金净额 - 处置子公司及其他营业单位收到的现金净额) / 期初总资产 | Expanded net investment cash outflow divided by beginning total assets | Check whether M&A-related cash flows are included. |
| 财务特征 | 是否亏损 | Loss | 当年净利润小于 0 取 1，否则取 0 | Indicator equal to 1 if annual net profit is below zero, and 0 otherwise | Binary distress-style control. |

## Profitability and Operating Performance

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 盈利能力 | 总资产净利润率1 | ROA1 | 净利润 / 总资产平均余额 | Net profit divided by average total assets | Common accounting profitability measure. |
| 盈利能力 | 总资产净利润率2 | ROA2 | 息税前利润 / 总资产平均余额 | Earnings before interest and taxes divided by average total assets | EBIT-based ROA variant. |
| 盈利能力 | 净资产收益率 | ROE | 净利润 / 所有者权益平均余额 | Net profit divided by average shareholders' equity | Common return-on-equity measure. |
| 盈利能力 | 销售毛利率 | GrossProfit | （营业收入 - 营业成本）/ 营业收入 | Gross profit margin, defined as operating revenue minus operating cost, divided by operating revenue | Margin control. |
| 盈利能力 | 销售净利率 | NetProfit | 净利润 / 营业收入 | Net profit divided by operating revenue | Sometimes named net margin. |
| 盈利能力 | 总资产周转率 | ATO | 营业收入 / 平均资产总额 | Operating revenue divided by average total assets | Asset turnover measure. |
| 盈利能力 | 基本每股收益 | 基本每股收益 | 直接来源于上市公司年报的财务摘要 | Basic earnings per share reported in the listed firm's annual report summary | Raw report field rather than a standardized Stata code. |
| 盈利能力 | 稀释每股收益 | 稀释每股收益 | 直接来源于上市公司年报的财务摘要 | Diluted earnings per share reported in the listed firm's annual report summary | Raw report field rather than a standardized Stata code. |
| 盈利能力 | 年个股回报率1 | 年个股回报率1 | 考虑现金红利再投资的年个股回报率 | Annual stock return assuming reinvestment of cash dividends | Use exact database field if available. |
| 盈利能力 | 年个股回报率2 | 年个股回报率2 | 不考虑现金红利再投资的年个股回报率 | Annual stock return without reinvestment of cash dividends | Use exact database field if available. |

## Growth

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 成长性 | 营业收入增长率 | Growth | 本年营业收入 / 上一年营业收入 - 1 | Current-year operating revenue divided by prior-year operating revenue minus 1 | Common sales growth measure. |
| 成长性 | 总资产增长率 | AssetGrowth | 本年总资产 / 上一年总资产 - 1 | Current-year total assets divided by prior-year total assets minus 1 | Firm expansion proxy. |
| 成长性 | 净利润增长率 | NetProfitGrowth | 本年净利润 / 上一年净利润 - 1 | Current-year net profit divided by prior-year net profit minus 1 | Can be unstable when prior-year profit is near zero or negative. |
| 成长性 | 资本增值保值率 | CMIR | 本年所有者权益 / 上一年所有者权益 | Current-year shareholders' equity divided by prior-year shareholders' equity | Check whether the project treats this as a level ratio or growth-style indicator. |
| 成长性 | 资本积累率 | RCA | 本年所有者权益 / 上一年所有者权益 - 1 | Current-year shareholders' equity divided by prior-year shareholders' equity minus 1 | Explicit growth version of equity accumulation. |

## Tax and Cost Structure

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 财务特征 | 综合税率1 | CTR1 | （营业税金及附加 + 所得税费用）/ 营业总收入 | Business tax and surcharges plus income tax expense, divided by total operating revenue | Effective tax-style control. |
| 财务特征 | 综合税率2 | CTR2 | （营业税金及附加 + 所得税费用）/ 利润总额 | Business tax and surcharges plus income tax expense, divided by total profit | Check handling when total profit is negative or near zero. |
| 财务特征 | 所得税率 | ITR | 所得税费用 / 利润总额 | Income tax expense divided by total profit | Conventional effective income tax rate. |
| 财务特征 | 经营费用率 | Ofee | （管理费用 + 销售费用）/ 营业收入 | Administrative expenses plus selling expenses divided by operating revenue | Operating expense intensity. |
| 财务特征 | 管理费用率 | Mfee | 管理费用 / 营业收入 | Administrative expenses divided by operating revenue | Cost control proxy. |
| 财务特征 | 大股东资金占用 | Occupy | 其他应收款净额 / 总资产 | Net other receivables divided by total assets | Often used as a tunneling or appropriation proxy. |

## Governance Structure

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 治理结构 | 董事人数 | Board | 董事会人数取自然对数 | Natural logarithm of board size | Check whether some projects use raw board size instead of the log. |
| 治理结构 | 独立董事比例 | Indep | 独立董事除以董事人数 | Number of independent directors divided by total directors | Board independence proxy. |
| 治理结构 | 两职合一 | Dual | 董事长与总经理是同一个人为 1，否则为 0 | Indicator equal to 1 if the chairperson also serves as general manager or CEO, and 0 otherwise | CEO duality indicator. |
| 治理结构 | 审计意见 | Opinion | 若公司当年的财务报告被出具了标准审计意见，则取值为 1，否则为 0 | Indicator equal to 1 if the annual financial report receives a standard unqualified audit opinion, and 0 otherwise | Confirm polarity because some papers code modified opinions as 1. |
| 治理结构 | 是否四大 | Big4 | 公司经由四大审计为 1，否则为 0 | Indicator equal to 1 if the firm is audited by a Big Four audit firm, and 0 otherwise | Big Four usually refers to PwC, Deloitte, KPMG, and EY. |
| 治理结构 | 是否三大 | Big3 | 公司经由三大审计为 1，否则为 0 | Indicator equal to 1 if the firm is audited by one of three named major auditors, and 0 otherwise | Definition is sample-specific and should be checked. |
| 治理结构 | 审计费用 | AuditFee | 审计费用取自然对数 | Natural logarithm of audit fees | Audit quality or complexity proxy. |
| 治理结构 | 前十大股东是否存在关联 | 前十大股东是否存在关联 | 存在关联为 1，不存在关联为 0，不明确为缺失状态 | Indicator equal to 1 if the top ten shareholders are related parties, 0 if not, and missing if unclear | Raw governance field rather than a stable code. |

## Ownership Structure and Market Valuation

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 股权结构 | 第一大股东持股比例 | Top1 | 第一大股东持股数量 / 总股数 | Shares held by the largest shareholder divided by total shares outstanding | Ownership concentration proxy. |
| 股权结构 | 前三大股东持股比例 | Top3 | 前三股东持股数量 / 总股数 | Shares held by the top three shareholders divided by total shares outstanding | Ownership concentration proxy. |
| 股权结构 | 前五大股东持股比例 | Top5 | 前五股东持股数量 / 总股数 | Shares held by the top five shareholders divided by total shares outstanding | Ownership concentration proxy. |
| 股权结构 | 前十大股东持股比例 | Top10 | 前十股东持股数量 / 总股数 | Shares held by the top ten shareholders divided by total shares outstanding | Ownership concentration proxy. |
| 股权结构 | 股权制衡度1 | Balance1 | 第二大股东持股比例 / 第一大股东持股比例 | Shareholding ratio of the second-largest shareholder divided by that of the largest shareholder | Balance against dominant shareholder. |
| 股权结构 | 股权制衡度2 | Balance2 | 第二到五位大股东持股比例之和 / 第一大股东持股比例 | Sum of shareholding ratios of the second- to fifth-largest shareholders divided by that of the largest shareholder | Alternative ownership balance proxy. |
| 股权结构 | 股权制衡度3 | Balance3 | 第二到十位大股东持股比例之和 / 第一大股东持股比例 | Sum of shareholding ratios of the second- to tenth-largest shareholders divided by that of the largest shareholder | Broad ownership balance proxy. |
| 股权结构 | 股权赫芬达尔指数3 | Herfindahl3 | 公司前 3 位大股东持股比例的平方和 | Sum of squared shareholding ratios of the top three shareholders | Ownership concentration index. |
| 股权结构 | 股权赫芬达尔指数5 | Herfindahl5 | 公司前 5 位大股东持股比例的平方和 | Sum of squared shareholding ratios of the top five shareholders | Ownership concentration index. |
| 股权结构 | 股权赫芬达尔指数10 | Herfindahl10 | 公司前 10 位大股东持股比例的平方和 | Sum of squared shareholding ratios of the top ten shareholders | Ownership concentration index. |
| 股权结构 | 两权分离 | Seperate | 实际控制人拥有上市公司控制权比例减去其实有所有权比例 | The controlling shareholder's control rights minus ownership rights in the listed firm | Often spelled `Separate` in some projects; verify actual code. |
| 市场估值 | 账面市值比 | BM | 账面价值 / 总市值 | Book value divided by market capitalization | Book-to-market ratio. |
| 市场估值 | 市净率 | PB | 每股价格 / 每股净资产 | Market price per share divided by book value per share | Price-to-book ratio. |
| 市场估值 | 托宾 Q 值 | TobinQ | （流通股市值 + 非流通股股份数 × 每股净资产 + 负债账面值）/ 总资产 | Tobin's Q, defined as market value of tradable shares plus non-tradable shares valued at book value per share plus book value of liabilities, divided by total assets | Exact formula may vary by database and period. |

## Firm Age and Listing Information

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 企业基本信息 | 上市年限 | ListAge | ln(当年年份 - 上市年份 + 1) | Natural logarithm of current year minus listing year plus 1 | Common firm-age-from-listing control. |
| 企业基本信息 | 公司成立年限 | FirmAge | ln(当年年份 - 公司成立年份 + 1) | Natural logarithm of current year minus establishment year plus 1 | Distinct from listing age. |
| 企业基本信息 | 上市年份 | ListedYear | 上市年份 | Listing year | Raw background field. |
| 企业基本信息 | 成立年份 | EstablishYear | 成立年份 | Establishment year | Raw background field. |
| 企业基本信息 | 退市年份 | DelistedYear | 退市年份 | Delisting year | Raw background field. |
| 企业基本信息 | 当年是否 ST 或 PT | 当年是否ST或PT | 当年 ST 或 PT 为 1，否则为 0 | Indicator equal to 1 if the firm is under ST or PT status in the current year, and 0 otherwise | Special-treatment status flag. |
| 企业基本信息 | 样本区间内是否 ST 或 PT | 样本区间内是否ST或PT | 样本区间内 ST 或 PT 为 1，否则为 0 | Indicator equal to 1 if the firm is under ST or PT status at any point in the sample window, and 0 otherwise | Useful for sample screening. |
| 企业基本信息 | 是否当年上市 | 是否当年上市 | 当年上市为 1，否则为 0 | Indicator equal to 1 if the firm goes public in the current year, and 0 otherwise | Raw event field. |
| 企业基本信息 | 是否属于上市前 | 是否属于上市前 | 该观测值属于上市前为 1，否则为 0 | Indicator equal to 1 if the observation belongs to the pre-listing period, and 0 otherwise | Only relevant in extended or backfilled panels. |
| 企业基本信息 | 当年是否退市 | 当年是否退市 | 当年退市为 1，否则为 0 | Indicator equal to 1 if the firm is delisted in the current year, and 0 otherwise | Raw event field. |
| 企业基本信息 | 上市板块 | 上市板块 | 深证 A 股、上证 A 股、北证 A 股、创业板、科创板 | Listing board, such as Shenzhen A-share, Shanghai A-share, Beijing A-share, ChiNext, or STAR Market | Often used for descriptive grouping or fixed effects. |
| 企业基本信息 | 金融业 | 金融业 | 金融业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to the financial industry, and 0 otherwise | Often used to exclude financial firms. |
| 企业基本信息 | 制造业 | 制造业 | 制造业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to manufacturing, and 0 otherwise | Useful in industry subgroup analysis. |
| 企业基本信息 | 沪深上市 | 沪深上市 | 沪深 A 股上市为 1，否则为 0 | Indicator equal to 1 if the firm is listed on Shanghai or Shenzhen A-share markets, and 0 otherwise | Raw listing-market flag. |
| 企业基本信息 | 北京上市 | 北京上市 | 北京 A 股上市为 1，否则为 0 | Indicator equal to 1 if the firm is listed on the Beijing market, and 0 otherwise | Raw listing-market flag. |
| 企业基本信息 | 资不抵债 | 资不抵债 | 负债大于资产为 1，否则为 0 | Indicator equal to 1 if liabilities exceed assets, and 0 otherwise | Distress flag. |
| 企业基本信息 | 是否国有企业 | SOE | 国有控股企业为 1，其他为 0 | Indicator equal to 1 for state-controlled enterprises and 0 otherwise | Core ownership-type indicator. |
| 企业基本信息 | 省份 | Province | 注册地所在省份 | Province of registration | Often used for regional grouping or fixed effects. |
| 企业基本信息 | 城市 | City | 注册地所在城市 | City of registration | Often used for regional grouping or geographic matching. |
| 企业基本信息 | 办公地经度 | Lng | 办公地经度 | Longitude of the office location | Geographic matching variable. |
| 企业基本信息 | 办公地纬度 | Lat | 办公地纬度 | Latitude of the office location | Geographic matching variable. |
| 企业基本信息 | 行业名称 | IndustryName | 2023 年前为证监会行业，2023 年及之后为中上协行业 | Industry name, typically CSRC before 2023 and CAPCO after 2023 | Check coding regime because the official standard changed. |
| 企业基本信息 | 行业代码1 | Industry1 | 行业三位编码（常规行业编码） | Three-digit industry code | Standard industry coding variable. |
| 企业基本信息 | 行业代码2 | Industry2 | 制造业取两位代码，其他行业用大类 | Two-digit industry code for manufacturing and broad category for other industries | Often used for industry fixed effects. |

## Institutional and Managerial Characteristics

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 管理层特征 | 机构投资者持股比例 | INST | 机构投资者持股总数 / 总股本数量 | Total institutional investor holdings divided by total shares outstanding | External monitoring proxy. |
| 管理层特征 | 管理层持股比例 | Mshare | 董监高持股数量 / 总股本数量 | Shares held by directors, supervisors, and senior executives divided by total shares outstanding | Insider ownership proxy. |
| 管理层特征 | 员工人数 | Employee | 员工人数取自然对数 | Natural logarithm of the number of employees | Human-capital or firm-complexity proxy. |
| 管理层特征 | 管理层平均年龄 | TMTAge | 董监高年龄的平均数 | Average age of directors, supervisors, and senior executives | Upper-echelon characteristic. |
| 管理层特征 | 产融结合 | Bank | 是否持有银行股份 | Indicator for whether the firm holds equity stakes in banks | Financial linkage proxy. |
| 管理层特征 | 产融结合2 | FinInst | 是否持有其他金融机构股份 | Indicator for whether the firm holds equity stakes in other financial institutions | Financial linkage proxy beyond banks. |
| 管理层特征 | 管理层女性比例 | Female | 管理层女性人数 / 管理层总人数 | Number of female executives divided by total top-management members | Gender diversity proxy. |
| 管理层特征 | 董监高是否具有金融背景 | FinBack | 现任董监高中是否有人具有金融背景 | Indicator for whether any current director, supervisor, or senior executive has a financial background | Background definition may vary by project. |
| 管理层特征 | 董监高是否具有海外背景 | OverseaBack | 现任董监高中是否有人具有海外背景 | Indicator for whether any current director, supervisor, or senior executive has overseas study or work experience | Often used in internationalization or innovation studies. |
| 管理层特征 | 管理层前三名薪酬 | TMTPay1 | 前三名高管薪酬总额的自然对数 | Natural logarithm of the total compensation of the top three executives | Executive incentive proxy. |
| 管理层特征 | 管理层总薪酬 | TMTPay2 | 高管薪酬总额的自然对数 | Natural logarithm of total executive compensation | Executive incentive proxy. |
| 管理层特征 | 董事长持股数量 | ChairHold | 董事长持股数量，单位为股 | Chairperson shareholdings, measured in number of shares | Raw governance field. |
| 管理层特征 | 董事长持股比例 | ChairHoldR | 董事长持股比例 | Chairperson shareholding ratio | Ownership incentive proxy. |
| 管理层特征 | 总经理持股数量 | CEOHold | 总经理持股数量，单位为股 | CEO or general manager shareholdings, measured in number of shares | Raw governance field. |
| 管理层特征 | 总经理持股比例 | CEOHoldR | 总经理持股比例 | CEO or general manager shareholding ratio | Ownership incentive proxy. |
| 管理层特征 | 股东总数 | 股东总数 | 股东总数，单位个 | Total number of shareholders | Raw market-structure field. |

## R&D and Human Capital

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 研发与人力资本 | 研发投入金额 | lnRDs | 研发金额加 1 后取对数 | Natural logarithm of R&D expenditure plus 1 | Check whether the base variable is annual R&D expense or capitalized plus expensed R&D. |
| 研发与人力资本 | 研发投入人员 | lnRDp | 研发人员加 1 后取对数 | Natural logarithm of R&D personnel plus 1 | Headcount-based innovation input proxy. |
| 研发与人力资本 | 研发投入营业收入比 | RD_Income | 研发投入金额 / 营业收入 | R&D expenditure divided by operating revenue | R&D intensity by sales. |
| 研发与人力资本 | 研发投入总资产比 | RD_Asset | 研发投入金额 / 总资产 | R&D expenditure divided by total assets | R&D intensity by asset base. |
| 研发与人力资本 | 研发投入员工数量比 | RD_Person | 研发人员 / 员工总数 | R&D personnel divided by total employees | Personnel-based R&D intensity. |
| 研发与人力资本 | 本科以上学历人员数量 | lnBS | 本科及以上学历人数加 1 后取对数 | Natural logarithm of the number of employees with at least a bachelor's degree plus 1 | Human-capital stock proxy. |
| 研发与人力资本 | 本科以上学历人员占比 | BSr | 本科及以上学历人数 / 员工总数 | Employees with at least a bachelor's degree divided by total employees | Human-capital quality proxy. |

## Financing Constraints

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 融资约束 | 融资约束1 | SA | SA 指数 | SA index of financing constraints | Exact formula depends on the adopted literature and scaling. |
| 融资约束 | 融资约束2 | WW | WW 指数 | Whited-Wu index of financing constraints | Confirm whether the sign is transformed in the project. |
| 融资约束 | 融资约束3 | FC | FC 指数 | FC financing-constraint index | Check the paper-specific source because `FC` is not universally standardized. |
| 融资约束 | 融资约束4 | KZ | KZ 指数 | Kaplan-Zingales index of financing constraints | Confirm the exact operationalization and sign convention. |

## Heterogeneity Grouping

| category | chinese_name | variable_name | definition_cn | definition_en | notes |
| --- | --- | --- | --- | --- | --- |
| 异质性分组 | 东部地区 | East | 东部地区为 1，否则为 0 | Indicator equal to 1 if the firm is located in the eastern region, and 0 otherwise | Typical provinces: Beijing, Tianjin, Hebei, Liaoning, Shanghai, Jiangsu, Zhejiang, Fujian, Shandong, Guangdong, and Hainan. |
| 异质性分组 | 西部地区 | West | 西部地区为 1，否则为 0 | Indicator equal to 1 if the firm is located in the western region, and 0 otherwise | Typical provinces or regions include Inner Mongolia, Chongqing, Sichuan, Guangxi, Guizhou, Yunnan, Shaanxi, Gansu, Qinghai, Ningxia, Xinjiang, and Tibet. |
| 异质性分组 | 中部地区 | Mid | 中部地区为 1，否则为 0 | Indicator equal to 1 if the firm is located in the central region, and 0 otherwise | Typical provinces include Shanxi, Jilin, Heilongjiang, Henan, Hubei, Hunan, Anhui, and Jiangxi. |
| 异质性分组 | 高科技行业1 | HighTech_1 | 高科技行业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to the high-tech industry under scheme 1, and 0 otherwise | The exact industry list is literature-specific; verify the coding reference in the project. |
| 异质性分组 | 高科技行业2 | HighTech_2 | 高科技行业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to the high-tech industry under scheme 2, and 0 otherwise | Literature-specific coding. |
| 异质性分组 | 高科技行业3 | HighTech_3 | 高科技行业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to the high-tech industry under scheme 3, and 0 otherwise | Literature-specific coding. |
| 异质性分组 | 高科技行业4 | HighTech_4 | 高科技行业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to the high-tech industry under scheme 4, and 0 otherwise | Literature-specific coding. |
| 异质性分组 | 高科技行业5 | HighTech_5 | 高科技行业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to the high-tech industry under scheme 5, and 0 otherwise | Literature-specific coding. |
| 异质性分组 | 重污染行业1 | Pollute_1 | 重污染行业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to a heavily polluting industry under scheme 1, and 0 otherwise | The exact industry list is literature-specific; verify the coding reference in the project. |
| 异质性分组 | 重污染行业2 | Pollute_2 | 重污染行业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to a heavily polluting industry under scheme 2, and 0 otherwise | Literature-specific coding. |
| 异质性分组 | 重污染行业3 | Pollute_3 | 重污染行业为 1，否则为 0 | Indicator equal to 1 if the firm belongs to a heavily polluting industry under scheme 3, and 0 otherwise | Literature-specific coding. |
| 异质性分组 | 劳动密集型 | 劳动密集型 | 劳动密集型为 1，否则为 0 | Indicator equal to 1 if the firm belongs to a labor-intensive industry group, and 0 otherwise | Grouping rule should be tied to the adopted literature. |
| 异质性分组 | 技术密集型 | 技术密集型 | 技术密集型为 1，否则为 0 | Indicator equal to 1 if the firm belongs to a technology-intensive industry group, and 0 otherwise | Grouping rule should be tied to the adopted literature. |
| 异质性分组 | 资产密集型 | 资产密集型 | 资产密集型为 1，否则为 0 | Indicator equal to 1 if the firm belongs to an asset-intensive industry group, and 0 otherwise | Grouping rule should be tied to the adopted literature. |

## Interpretation Notes

- Some entries in the source document are standardized variable names, while others are raw field labels from annual reports or data vendors.
- Some heterogeneity and financing-constraint measures are literature-dependent rather than universally standardized.
- When drafting English papers, use the `definition_en` column as a starting point, but still adapt the wording to the journal's style and the project's confirmed variable dictionary.
