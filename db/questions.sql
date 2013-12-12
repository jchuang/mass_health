-- What 3 towns have the highest population of citizens that are 65 years and older?
-- Boston, Worcester, Springfield

SELECT town_name FROM town_health_records
ORDER BY senior_population DESC
LIMIT 3;

-- What 3 towns have the highest population of citizens that are 19 years and younger?
-- Boston, Worcester, Springfield

SELECT town_name FROM town_health_records
ORDER BY youth_population DESC
LIMIT 3;

-- What 5 towns have the lowest per capita income?
-- Monroe, Lawrence, Chelsea, Springfield, Gosnold

SELECT town_name FROM town_health_records
ORDER BY per_capita_income
LIMIT 5;

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
-- Holyoke

SELECT town_name FROM town_health_records
WHERE town_name != 'Boston' AND town_name != 'Becket'
  AND town_name != 'Beverly' AND teen_birth_percent IS NOT NULL
ORDER BY teen_birth_percent DESC
LIMIT 1;

-- Omitting Boston, what town has the highest number of infant mortalities?
-- Worcester

SELECT town_name FROM town_health_records
WHERE town_name != 'Boston' AND infant_deaths IS NOT NULL
ORDER BY infant_deaths DESC
LIMIT 1;
