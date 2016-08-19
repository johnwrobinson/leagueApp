class League < ApplicationRecord
  belongs_to :game_type
  has_many :games
end
