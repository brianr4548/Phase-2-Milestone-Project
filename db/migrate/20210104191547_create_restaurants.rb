class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :description
      t.string :name
      t.string :food_type
      t.string :address
      t.integer :city_id
      t.string :img
      t.timestamps
    end
  end
end
