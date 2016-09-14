class League < ApplicationRecord
  belongs_to :game_type
  has_many :games

  has_many :player_in_leagues
  has_many :players, through: :player_in_leagues
end
