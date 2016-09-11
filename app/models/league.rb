class League < ApplicationRecord
  belongs_to :game_type
  has_many :games
  has_and_belongs_to_many :players
end
