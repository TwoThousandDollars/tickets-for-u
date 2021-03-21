class RemoveWeeksFromTeams < ActiveRecord::Migration[6.1]
  def change
      remove_column :teams, :week
  end
end
