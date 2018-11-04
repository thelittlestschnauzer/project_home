class RoomsController < ApplicationController

  def index
    @rooms = Room.all
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path(@room)
    else
      render :index
    end
  end

  private

  def room_params
    params.require(:room).permit(:title)
  end
end
