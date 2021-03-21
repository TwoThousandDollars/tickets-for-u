class AddWeekToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :week, :integer
  end
end
