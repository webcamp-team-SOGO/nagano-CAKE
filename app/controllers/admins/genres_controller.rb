class Admins::GenresController < ApplicationController

  def index
    @genres = Genre.all

  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to request.referer
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
  end

private
  def genre_params
    params[:genre].permit(:name)
  end

end
