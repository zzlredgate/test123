SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetRSSFeeds]
AS BEGIN
    SELECT RSSFeedID, FeedName, Checked FROM dbo.RSSFeeds;
END;
GO
