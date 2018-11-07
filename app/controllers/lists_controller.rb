class ListsController < ApplicationController

  def index
    @room = Room.find(params[:id])
    @list = @room.lists.all
  end

  def create
    @room = Room.find(params[:room_id])
    @list = @room.lists.build(list_params)
    if @list.save
      redirect_to rooms_path(@room, @list)
    else
      render :index
    end
  end

  def show
    @list = List.find(params[:list_id])
  end

  private

  def list_params
    params.require(:list).permit(:title, :room_id, :user_id)
  end

end
