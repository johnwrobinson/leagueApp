class Player < ApplicationRecord
  has_many :player_in_leagues
  has_many :leagues, through: :player_in_leagues
  has_and_belongs_to_many :games
end
