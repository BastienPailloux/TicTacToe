class GamesController < ApplicationController
  before_action :set_game, only: %i[show]
  def create
    game = Game.new
    game.state = "ongoing"
    game.user = current_user
    game.save!
    redirect_to game_path(game)
  end

  def show
    @boxes_fl = Box.first_line(@game.id).ordered
    @boxes_sl = Box.second_line(@game.id).ordered
    @boxes_tl = Box.third_line(@game.id).ordered
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
