class CreateLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :leagues do |t|
      t.references :game_type, foreign_key: true
      t.string :name
      t.string :season
      t.integer :number_of_players

      t.timestamps
    end
  end
end
