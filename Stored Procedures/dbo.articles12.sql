SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[articles12] AS
BEGIN
SELECT  Article, ArticlesID, PublishDate, ModifiedDate FROM dbo.Articles
END

GO
