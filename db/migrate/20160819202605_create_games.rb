class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.date :date_of_game
      t.references :leauge, foreign_key: true
      t.integer :number_of_players

      t.timestamps
    end
  end
end
