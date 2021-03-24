SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[getcontacts_now]
AS BEGIN
    SELECT Address1, Address2, Email, LinkedIn, PhoneMobile FROM dbo.Contacts;
END;
GO
