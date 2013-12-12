class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town_name, null: false
      t.integer :population, null: false
      t.integer :youth_population
      t.integer :senior_population
      t.integer :per_capita_income
      t.integer :poverty_population
      t.float :poverty_percent
      t.float :prenatal_percent
      t.float :c_section_percent
      t.integer :infant_deaths
      t.float :infant_mortality
      t.float :low_birthweight_percent
      t.float :multiple_births_percent
      t.float :public_prenatal_percent
      t.float :teen_birth_percent

      t.timestamps
    end
  end
end
