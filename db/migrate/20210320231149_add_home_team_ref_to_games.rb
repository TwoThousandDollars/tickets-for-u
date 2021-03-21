class AddHomeTeamRefToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :home_team, foreign_key: {to_table: :teams}
    add_reference :games, :away_team, foreign_key: {to_table: :teams}
  end
end
