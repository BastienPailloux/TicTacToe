class GamesController < ApplicationController
  def create
    game = Game.new
    game.state = "ongoing"
    game.user = current_user
    game.save!
    redirect_to root_path
  end
end
