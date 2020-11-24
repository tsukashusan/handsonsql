-- DROP TABLE [dbo].[shiresaki]
CREATE TABLE [dbo].[shiresaki]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_shiresaki]
GO


-- DROP TABLE [dbo].[unso]
CREATE TABLE [dbo].[unso]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_unso]
GO

-- DROP TABLE [dbo].[shain]
CREATE TABLE [dbo].[shain]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_shain]
GO


-- DROP TABLE [dbo].[shohin]
CREATE TABLE [dbo].[shohin]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_shohin]
GO

-- DROP TABLE [dbo].[shohinkubun]
CREATE TABLE [dbo].[shohinkubun]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_shohinkubun]
GO


-- DROP TABLE [dbo].[todofuken]
CREATE TABLE [dbo].[todofuken]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_todofuken]
GO


-- DROP TABLE [dbo].[tokuisaki]
CREATE TABLE [dbo].[tokuisaki]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_tokuisaki]
GO


-- DROP TABLE [dbo].[zyuchu]
CREATE TABLE [dbo].[zyuchu]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_zyuchu]
GO


-- DROP TABLE [dbo].[zyuchumeisai]
CREATE TABLE [dbo].[zyuchumeisai]
WITH
(
 DISTRIBUTION = ROUND_ROBIN
 ,CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT  *
FROM    [dbo].[ext_zyuchumeisai]
GO
