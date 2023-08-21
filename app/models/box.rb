class Box < ApplicationRecord
  belongs_to :game

  # validates :x, numericality: { only_integer: true }, inclusion: { in: 1...3 }
  # validates :y, numericality: { only_integer: true }, inclusion: { in: 1...3 }
  validates_uniqueness_of :x, scope: %i[y game_id]
  validates_uniqueness_of :y, scope: %i[x game_id]
end
