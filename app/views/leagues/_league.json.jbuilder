json.extract! league, :id, :name, :game_type_id, :season, :number_of_players, :created_at, :updated_at
json.url league_url(league, format: :json)