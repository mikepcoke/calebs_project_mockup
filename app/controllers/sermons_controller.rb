class SermonsController < ApplicationController

  def index
    @sermons = Sermon.all
  end

  def new
    @sermon = Sermon.new(sermon_params)
  end

  def create
    @sermon = Sermon.new(create_sermon_params)
    @sermon.save
    redirect_to @sermon
  end

  def show
    @sermon = Sermon.find(params[:id])
  end
 
private
  def sermon_params
    params.permit(:sermon_author_id)
  end

  def create_sermon_params
    params.require(:sermon).permit(:sermon_author_id, :title, :passage)
  end
end
