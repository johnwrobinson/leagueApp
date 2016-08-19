class League < ApplicationRecord
  belongs_to :game_type
  has_many :games
  has_many :ins
  has_many :players, :through => :ins
end
