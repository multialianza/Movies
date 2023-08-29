class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    respond_to do |format|
      if @movie.save
        format.html { redirect_to movies_path, notice: "La película se ha creado exitosamente" }
        format.json { render :show, status: :created, location: @movies}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movies.errors, status: :unprocessable_entity }
      end
    end

    
  end

  def new
    @movie = Movie.new
  end
end

private

def movie_params
  params.require(:movie).permit(:name, :synopsis, :director)
end
