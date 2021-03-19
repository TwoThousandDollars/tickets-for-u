class FixColumnName < ActiveRecord::Migration[6.1]
  def change
      rename_column :teams, :full_name, :mascot
  end
end
