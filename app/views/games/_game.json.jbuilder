json.extract! game, :id, :date_of_game, :league_id, :number_of_players, :created_at, :updated_at
json.url game_url(game, format: :json)