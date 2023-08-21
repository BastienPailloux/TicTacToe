class Box < ApplicationRecord
  belongs_to :game

  # validates :x, numericality: { only_integer: true }, inclusion: { in: 1...3 }
  # validates :y, numericality: { only_integer: true }, inclusion: { in: 1...3 }
  validates_uniqueness_of :x, scope: %i[y game_id]
  validates_uniqueness_of :y, scope: %i[x game_id]

  scope :first_line, ->(game) {
    where(x: 1, game_id: game)
  }
  scope :second_line, ->(game) {
    where(x: 2, game_id: game)
  }
  scope :third_line, ->(game) {
    where(x: 3, game_id: game)
  }
  scope :ordered, -> {
    order(id: :asc)
  }

end
