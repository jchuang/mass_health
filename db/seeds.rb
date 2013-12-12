require 'csv'

TownHealthRecord.delete_all

def float_or_nil(string)
  if string == '' || string == 'NA'
    nil
  else
    string.to_f
  end
end

def integer_or_nil(string)
  if string == '' || string == 'NA'
    nil
  else
    string.gsub(/\D/,'').to_i
  end
end

CSV.foreach(Rails.root + 'db/data/mass_health_data.csv', headers: true) do |row|

  unless row[0].nil? || row[1].nil?

    TownHealthRecord.create(
      town_name: row[0],
      population: integer_or_nil(row[1]),
      youth_population: integer_or_nil(row[2]),
      senior_population: integer_or_nil(row[3]),
      per_capita_income: integer_or_nil(row[4]),
      poverty_population: integer_or_nil(row[5]),
      poverty_percent: float_or_nil(row[6]),
      prenatal_percent: float_or_nil(row[7]),
      c_section_percent: float_or_nil(row[8]),
      infant_deaths: integer_or_nil(row[9]),
      infant_mortality: float_or_nil(row[10]),
      low_birthweight_percent: float_or_nil(row[11]),
      multiple_births_percent: float_or_nil(row[12]),
      public_prenatal_percent: float_or_nil(row[13]),
      teen_birth_percent: float_or_nil(row[14]),
      )
  end
end
