class CreateIns < ActiveRecord::Migration[5.0]
  def change
    create_table :ins do |t|
      t.references :league, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
