class AddFinishedToElection < ActiveRecord::Migration[7.0]
  def change
    add_column :elections, :finished, :boolean
  end
end
