class SermonAuthorsController < ApplicationController

  def index
    @sermon_authors = SermonAuthor.all
  end

  def new
    @sermon_author = SermonAuthor.new
  end

  def create
    @sermon_author = SermonAuthor.new(sermon_author_params)
    @sermon_author.save
    redirect_to @sermon_author
  end

  def show
    @sermon_author = SermonAuthor.find(params[:id])
  end
 

 
private
  def sermon_author_params
    params.require(:sermon_author).permit(:name)
  end
end
