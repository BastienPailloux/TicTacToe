class OpponentGame
  def initialize(game)
    @game = game
  end

  def opponentChoice
    box = rand(@game.box[0].id..@game.box[9].id)
  end
end
