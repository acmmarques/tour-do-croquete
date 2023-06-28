class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :crunchiness
      t.integer :flavour
      t.integer :appearance
      t.integer :meat_ratio
      t.integer :average

      t.timestamps
    end
  end
end
