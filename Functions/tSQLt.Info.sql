SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
---Build+
CREATE FUNCTION [tSQLt].[Info]()
RETURNS TABLE
AS
RETURN
SELECT Version = '1.0.5686.18945',
       ClrVersion = (SELECT tSQLt.Private::Info()),
       V.SqlVersion,
       V.SqlBuild
  FROM
  (
    SELECT CAST(VI.major+'.'+VI.minor AS NUMERIC(10,2)) AS SqlVersion,
           CAST(VI.build+'.'+VI.revision AS NUMERIC(10,2)) AS SqlBuild
      FROM
      (
        SELECT PARSENAME(PSV.ProductVersion,4) major,
               PARSENAME(PSV.ProductVersion,3) minor, 
               PARSENAME(PSV.ProductVersion,2) build,
               PARSENAME(PSV.ProductVersion,1) revision
          FROM tSQLt.Private_SqlVersion() AS PSV
      )VI
  )V;
---Build-
GO
