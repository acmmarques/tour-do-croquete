class AddPasswordToElections < ActiveRecord::Migration[7.0]
  def change
    add_column :elections, :password, :string, null: false, default: ""
  end
end
