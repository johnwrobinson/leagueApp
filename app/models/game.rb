class Game < ApplicationRecord
  belongs_to :leauge
  has_many :plays
  has_many :players, :through => :plays
end
