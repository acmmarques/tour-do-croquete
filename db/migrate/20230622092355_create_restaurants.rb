class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.references :election, null: false, foreign_key: true
      t.string :name
      t.string :location
      t.float :rating

      t.timestamps
    end
  end
end
