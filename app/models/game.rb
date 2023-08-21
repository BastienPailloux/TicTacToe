class Game < ApplicationRecord
  belongs_to :user
  has_many :boxes

  after_create :create_boxes

  private

  def create_boxes
    x = 0
    3.times do
      y = 0
      x += 1
      3.times do
        y += 1
        box = Box.new
        box.x = x
        box.y = y
        box.state = " "
        box.game = self
        box.save!
      end
    end
  end
end
