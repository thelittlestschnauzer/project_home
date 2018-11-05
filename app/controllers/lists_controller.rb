class ListsController < ApplicationController

  def index
    @room = Room.find(params[:room_id])
    @list = @room.lists.build
  end

  def create
    @room = Room.find(params[:room_id])
    @list = @room.lists.build(list_params)
    if @list.save
      redirect_to room_lists_path(@room, @list)
    else
      render :index
    end
  end

  private

  def list_params
    params.require(:list).permit(:title, :room_id, :user_id)
  end

end
