class AddWeekToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :week, :integer
  end
end
