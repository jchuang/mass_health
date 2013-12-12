# What 3 towns have the highest population of citizens that are 65 years and older?

TownHealthRecord.select(:town_name, :senior_population).order(senior_population: :desc).limit(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?

TownHealthRecord.select(:town_name, :youth_population).order(youth_population: :desc).limit(3)

# What 5 towns have the lowest per capita income?

TownHealthRecord.select(:town_name, :per_capita_income).order(:per_capita_income).limit(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

# Omitting Boston, what town has the highest number of infant mortalities?

