class Player < ApplicationRecord
  has_many :plays
  has_many :games, :through => :plays
  has_many :ins
  has_many :leagues, :through => :ins
end
