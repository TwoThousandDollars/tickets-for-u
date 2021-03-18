class CreateDivisions < ActiveRecord::Migration[6.1]
  def change
    create_table :divisions do |t|
      t.references :conference, null: false, foreign_key: true
      t.references :zone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
