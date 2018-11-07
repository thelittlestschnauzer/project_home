class RoomsController < ApplicationController


  def index
    @room = current_user.rooms.new
    @rooms = Room.all
  end

  def create
    @room = Room.find(params[:room_id])
    @room = @room.lists.build(room_params)
    if @room.save
      redirect_to rooms_path(@room)
    else
      render :index
    end
  end

  def show
    @room = Room.find(params[:id])
    @list = @room.lists.build
  end


  private

  def room_params
    params.require(:room).permit(:title, :user_id, lists_attributes: [:id, :list_title, :_destroy])
  end
end
