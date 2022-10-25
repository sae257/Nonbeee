class User::GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @tweets = @genre.tweets
  end


private

  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
