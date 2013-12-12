# What 3 towns have the highest population of citizens that are 65 years and older?

TownHealthRecord.select(:town_name, :senior_population).order(senior_population: :desc).limit(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?

TownHealthRecord.select(:town_name, :youth_population).order(youth_population: :desc).limit(3)

# What 5 towns have the lowest per capita income?

TownHealthRecord.select(:town_name, :per_capita_income).order(:per_capita_income).limit(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

excluded_cities = %w(Boston Becket Beverly)
TownHealthRecord.where("town_name NOT IN (?) AND teen_birth_percent IS NOT NULL",
  excluded_cities).order(teen_birth_percent: :desc).select(:town_name, :teen_birth_percent).first

# Omitting Boston, what town has the highest number of infant mortalities?

TownHealthRecord.where("town_name != 'Boston' AND infant_deaths IS NOT NULL").
  order(infant_deaths: :desc).select(:town_name, :infant_deaths).first
