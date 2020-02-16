class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :year
      t.integer :month
      t.string :day
      t.string :time
      t.integer :n_people
      t.timestamps
    end
  end
end
