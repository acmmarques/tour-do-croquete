class CreateUserElections < ActiveRecord::Migration[7.0]
  def change
    create_table :user_elections do |t|
      t.references :user, null: false, foreign_key: true
      t.references :election, null: false, foreign_key: true

      t.timestamps
    end
  end
end
