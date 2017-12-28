class SermonAuthorsController < ApplicationController

  def new
    @sermon_author = SermonAuthor.new
  end

  def create
    @sermon_author = SermonAuthor.new(article_params)
    @sermon_author.save
    redirect_to @sermon_author
  end

  def show
    @sermon_author = SermonAuthor.find(params[:id])
  end
 

 
private
  def article_params
    params.require(:sermon_author).permit(:name)
  end
end
