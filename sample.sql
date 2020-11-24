CREATE MASTER KEY
GO
-- DROP DATABASE SCOPED CREDENTIAL AzureStorageCredential
CREATE DATABASE SCOPED CREDENTIAL AzureStorageCredential
WITH
    IDENTITY = '<storage account name>',
    SECRET = '<storage account key>' -- put key1's value here
GO

-- DROP EXTERNAL DATA SOURCE AzureStorage
CREATE EXTERNAL DATA SOURCE AzureStorage with (
        TYPE = HADOOP,
        LOCATION ='abfss://<output container>@<storage account name>.dfs.core.windows.net',
        CREDENTIAL = AzureStorageCredential
)
GO
--Create an external file format for ORC file.
-- DROP EXTERNAL FILE FORMAT ORC
CREATE EXTERNAL FILE FORMAT ORC
WITH (
    FORMAT_TYPE = ORC
    , DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)
GO

-- DROP EXTERNAL TABLE [ext_shiresaki]
CREATE EXTERNAL TABLE [ext_shiresaki] (
	[仕入先コード] [nvarchar](80) NOT NULL,
	[フリガナ] [nvarchar](80) NULL,
	[仕入先名] [nvarchar](40) NOT NULL,
	[担当者名] [nvarchar](30) NULL,
	[部署] [nvarchar](30) NULL,
	[郵便番号] [nvarchar](10) NULL,
	[トドウフケン] [nvarchar](30) NULL,
	[都道府県] [nvarchar](15) NULL,
	[住所1] [nvarchar](60) NULL,
	[住所2] [nvarchar](60) NULL,
	[電話番号] [nvarchar](24) NULL,
	[ファクシミリ] [nvarchar](24) NULL,
	[ホームページ] [nvarchar](4000) NULL
)
WITH (LOCATION='/shiiresaki',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO

-- DROP EXTERNAL TABLE [ext_unso]
CREATE EXTERNAL TABLE [ext_unso] (
	[運送コード] [nvarchar](1) NOT NULL,
	[運送会社] [nvarchar](40) NOT NULL,
	[電話番号] [nvarchar](24) NULL
)
WITH (LOCATION='/unso',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO

-- DROP EXTERNAL TABLE [ext_shain]
CREATE EXTERNAL TABLE [ext_shain] (
	[社員コード] [nvarchar](80) NOT NULL,
	[フリガナ] [nvarchar](80) NULL,
	[氏名] [nvarchar](40) NOT NULL,
	[在籍支社] [nvarchar](20) NULL,
	[部署名] [nvarchar](30) NULL,
	[誕生日] [nvarchar](30) NULL,
	[入社日] [nvarchar](30) NULL,
	[自宅郵便番号] [nvarchar](10) NULL,
	[自宅都道府県] [nvarchar](40) NULL,
	[自宅住所1] [nvarchar](60) NULL,
	[自宅住所2] [nvarchar](60) NULL,
	[自宅電話番号] [nvarchar](24) NULL,
	[内線] [nvarchar](4) NULL,
	[写真] [nvarchar](255) NULL,
	[プロフィール] [nvarchar](4000) NULL
)
WITH (LOCATION='/shain',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO

-- DROP EXTERNAL TABLE [ext_shohin]
CREATE EXTERNAL TABLE [ext_shohin] (
	[商品コード] [nvarchar](80) NOT NULL,
	[フリガナ] [nvarchar](80) NULL,
	[商品名] [nvarchar](40) NOT NULL,
	[仕入先コード] [nvarchar](20) NULL,
	[区分コード] [nvarchar](20) NULL,
	[梱包単位] [nvarchar](20) NULL,
	[単価] [nvarchar](100) NULL,
	[在庫] [nvarchar](20) NULL,
	[発注済] [nvarchar](20) NULL,
	[発注点] [nvarchar](20) NULL,
	[生産中止] [nvarchar](1) NOT NULL
)
WITH (LOCATION='/shohin',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO

-- DROP EXTERNAL TABLE [ext_shohinkubun]
CREATE EXTERNAL TABLE [ext_shohinkubun] (
	[区分コード] [nvarchar](1) NOT NULL,
	[区分名] [nvarchar](30) NOT NULL,
	[説明] [nvarchar](4000) NULL,
	[図] [nvarchar](4000) NULL
)
WITH (LOCATION='/shohinkubun',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO

-- DROP EXTERNAL TABLE [ext_todofuken]
CREATE EXTERNAL TABLE [ext_todofuken] (
	[トドウフケン] [nvarchar](30) NULL,
	[都道府県] [nvarchar](15) NULL,
	[ローマ字] [nvarchar](200) NULL,
	[地域名ローマ字] [nvarchar](200) NULL,
	[地域] [nvarchar](10) NULL
)
WITH (LOCATION='/todofuken',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO

-- DROP EXTERNAL TABLE [ext_tokuisaki]
CREATE EXTERNAL TABLE [ext_tokuisaki] (
	[得意先コード] [nvarchar](40) NOT NULL,
	[フリガナ] [nvarchar](40) NULL,
	[得意先名] [nvarchar](40) NOT NULL,
	[担当者名] [nvarchar](30) NULL,
	[部署] [nvarchar](30) NULL,
	[郵便番号] [nvarchar](10) NULL,
	[トドウフケン] [nvarchar](30) NULL,
	[都道府県] [nvarchar](15) NULL,
	[住所1] [nvarchar](60) NULL,
	[住所2] [nvarchar](60) NULL,
	[電話番号] [nvarchar](24) NULL,
	[ファクシミリ] [nvarchar](24) NULL
)
WITH (LOCATION='/tokuisaki',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO

-- DROP EXTERNAL TABLE [ext_zyuchu]
CREATE EXTERNAL TABLE [ext_zyuchu] (
	[受注コード] [nvarchar](40) NOT NULL,
	[得意先コード] [nvarchar](40) NULL,
	[社員コード] [nvarchar](40) NULL,
	[出荷先名] [nvarchar](40) NULL,
	[出荷先郵便番号] [nvarchar](10) NULL,
	[出荷先都道府県] [nvarchar](20) NULL,
	[出荷先住所1] [nvarchar](60) NULL,
	[出荷先住所2] [nvarchar](60) NULL,
	[運送区分] [nvarchar](40) NULL,
	[受注日] [nvarchar](100) NULL,
	[締切日] [nvarchar](100) NULL,
	[出荷日] [nvarchar](100) NULL,
	[運送料] [nvarchar](100) NULL
)
WITH (LOCATION='/zyuchu',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO

-- DROP EXTERNAL TABLE [ext_zyuchumeisai]
CREATE EXTERNAL TABLE [ext_zyuchumeisai] (
	[受注コード] [nvarchar](100) NOT NULL,
	[商品コード] [nvarchar](100) NOT NULL,
	[単価] [nvarchar](100) NOT NULL,
	[数量] [nvarchar](100) NOT NULL,
	[割引] [nvarchar](100) NOT NULL
)
WITH (LOCATION='/zyuchumeisai',
        DATA_SOURCE = AzureStorage,
        FILE_FORMAT = ORC
)
GO