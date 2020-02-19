class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :n_zipcode
      t.string :n_prefecture
      t.string :n_building
      t.integer :n_b_floor
      t.integer :n_floor
      t.string :n_elevator
      t.string :n_roadwidth
      t.string :x_zipcode
      t.string :x_prefecture
      t.string :x_building
      t.integer :x_b_floor
      t.integer :x_floor
      t.string :x_elevator
      t.string :x_roadwidth
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
