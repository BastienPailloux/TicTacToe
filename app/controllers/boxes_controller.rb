class BoxesController < ApplicationController
  before_action :set_box, only: %i[update]

  def update
    # check = ::CheckerService.new(@box).checker
    # if check == "Empty"
      @box.state = 'X'
      @box.save!
      # OpponentGame.new(@box.game).opponentChoice
      redirect_to game_path(@box.game)
    # else
      # redirect_to game_path(@box.game)
    # end
  end

  private

  def set_box
    @box = Box.find(params[:id])
  end
end
