class RoomsController < ApplicationController

  def index
  end

  private

  def room_params
    params.require(:room).permit(:title)
  end
end
