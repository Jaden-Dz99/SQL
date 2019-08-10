--Q1 convict list
SELECT [CRIME]
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[SENTENCE]
      ,[YEARS]
  FROM [First].[dbo].[First Fleet]
  order by LASTNAME , FIRSTNAME asc

--Q2 ship list 
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[SEX]
      ,[YEARS]
      ,[SHIP]
  FROM [First].[dbo].[First Fleet]
  order by SHIP , SEX , LASTNAME asc;

--Q3 long sentences
SELECT [LASTNAME]
      ,[FIRSTNAME]
	  ,[CRIME]
      ,[SEX]
      ,[SHIP]
  FROM [First].[dbo].[First Fleet] WHERE YEARS > 20

--Q4 female convicts
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[AGE]
      ,[OCCUPATION]
  FROM [First].[dbo].[First Fleet] WHERE SEX LIKE 'FEMALE'

--Q5 age unknown
SELECT [LASTNAME]
      ,[FIRSTNAME]
	  ,[CRIME]
  FROM [First].[dbo].[First Fleet] WHERE AGE IS NULL

--Q6 age over 50
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[AGE]
  FROM [First].[dbo].[First Fleet] WHERE AGE > 50
  order by AGE desc

--Q7 convict occupations
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[OCCUPATION]
  FROM [First].[dbo].[First Fleet] WHERE OCCUPATION IS NOT NULL

--Q8 later trials
SELECT [LASTNAME]
      ,[FIRSTNAME]
	  ,[CRIME]
      ,[SEX]
      ,[OCCUPATION]
  FROM [First].[dbo].[First Fleet] WHERE TRIAL_DATE > '1785-03-01'

--Q9 not old bailey
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[COURT]
  FROM [First].[dbo].[First Fleet] WHERE COURT NOT LIKE 'OLDBAILEY'

--Q10 medium sentences
SELECT [LASTNAME]
      ,[FIRSTNAME]
	  ,[CRIME]
      ,[SEX]
      ,[OCCUPATION]
  FROM [First].[dbo].[First Fleet] WHERE YEARS BETWEEN 10 AND 20

--Q11 robbers
SELECT [LASTNAME]
      ,[FIRSTNAME]
	  ,[CRIME]
  FROM [First].[dbo].[First Fleet] WHERE CRIME LIKE '%ROBBERY%'

--Q12 name with son
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[OCCUPATION]
  FROM [First].[dbo].[First Fleet] WHERE LASTNAME LIKE '%SON%'

--Q13 male burglars
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[SHIP]
  FROM [First].[dbo].[First Fleet] WHERE SEX LIKE 'MALE' AND CRIME LIKE 'BURGLARY'

--Q14 Old bailey 1784
SELECT [LASTNAME]
      ,[FIRSTNAME]
	  ,[CRIME]
  FROM [First].[dbo].[First Fleet] WHERE COURT LIKE 'OLDBAILEY' AND TRIAL_DATE = '1784'

--Q15 death or long term
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[SENTENCE]
      ,[YEARS]
  FROM [First].[dbo].[First Fleet] WHERE SENTENCE LIKE 'DEATH' AND YEARS > 20

--Q16 from the south
SELECT [LASTNAME]
      ,[FIRSTNAME]
      ,[SENTENCE]
      ,[YEARS]
	  ,[COURT]
  FROM [First].[dbo].[First Fleet] WHERE COURT LIKE 'DEVON' OR COURT LIKE 'CORNWALL'



