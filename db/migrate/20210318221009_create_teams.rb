class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :code
      t.string :city
      t.string :full_name

      t.timestamps
    end
  end
end
