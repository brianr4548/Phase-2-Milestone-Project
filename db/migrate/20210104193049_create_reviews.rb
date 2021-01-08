class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.integer :rating
      t.string :description
      # t.integer :likes
      t.timestamps
    end
  end
end
