class CreateCsvs < ActiveRecord::Migration[5.0]
  def change
    create_table :csvs do |t|
      t.integer :school_year
      t.string :level_code
      t.integer :div_num
      t.string :div_name
      t.integer :sch_num
      t.string :sch_name
      t.string :federal_race_code
      t.string :gender
      t.string :disability_flag
      t.string :lep_flag
      t.string :disadvantaged_flag
      t.integer :cohort_cnt
      t.integer :diploma_rate
      t.integer :dropout_rate

      t.timestamps
    end
  end
end
