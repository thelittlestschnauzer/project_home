class RoomsController < ApplicationController


  def index
    @rooms = Room.all
    @room = current_user.rooms.new
    @list = @room.lists.build
  end

  def create
    @room = current_user.rooms.new(room_params)
    if @room.save
      redirect_to rooms_path(@room)
    else
      render :index
    end
  end

  def show
    @room = Room.find(params[:id])
  end


  private

  def room_params
    params.require(:room).permit(:title, lists_attributes: [:id, :title])
  end
end
