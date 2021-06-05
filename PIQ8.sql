/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [Device_Type]
      ,REPLACE( REPLACE( REPLACE( REPLACE( [Stats_Access_Link],'https://',''),'http://',''),'<url>',''),'/</url>','') as [Stats_Access_Link]
  FROM [NewsSiteDB].[dbo].[PIQ8]

