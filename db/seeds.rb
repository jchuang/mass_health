require 'csv'

TownHealthRecord.delete_all

CSV.foreach(Rails.root + 'db/data/mass_health_data.csv', headers: true) do |row|

  unless row[0].nil? || row[1].nil?

    TownHealthRecord.create(
      town_name: row[0],
      population: row[1].gsub(/\W/,'').to_i,
      youth_population: row[2].gsub(/\W/,'').to_i,
      senior_population: row[3].gsub(/\W/,'').to_i,
      per_capita_income: row[4].gsub(/\W/,'').to_i,
      poverty_population: row[5].gsub(/\W/,'').to_i,
      poverty_percent: row[6].to_f,
      prenatal_percent: row[7].to_f,
      c_section_percent: row[8].to_f,
      infant_deaths: row[9].to_i,
      infant_mortality: row[10].to_f,
      low_birthweight_percent: row[11].to_f,
      multiple_births_percent: row[12].to_f,
      public_prenatal_percent: row[13].to_f,
      teen_birth_percent: row[14].to_f
      )
  end

end
