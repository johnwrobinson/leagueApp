json.extract! player, :id, :firstname, :lastname, :email, :created_at, :updated_at
json.url player_url(player, format: :json)