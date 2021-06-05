SELECT [country],
case when MEDYAN is null then 0 else MEDYAN end as MEDYAN
FROM
(SELECT [country],PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY [daily_vaccinations]) OVER (PARTITION BY [country]) AS MEDYAN
FROM [dbo].[country_vaccination_stats]) AS A1
GROUP BY [country],MEDYAN
ORDER BY [country] 

