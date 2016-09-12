class CreatePlayerInLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :player_in_leagues do |t|
      t.references :player, foreign_key: true
      t.references :league, foreign_key: true

      t.timestamps
    end
  end
end
