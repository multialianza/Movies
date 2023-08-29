class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def create
    @serie = Serie.new(serie_params)
    respond_to do |format|
      if @serie.save
        format.html { redirect_to series_index_path, notice: "La serie se ha creado exitosamente" }
        format.json { render :show, status: :created, location: @series}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end

    
  end

  def new
    @serie = Serie.new
  end
end

private

def serie_params
  params.require(:serie).permit(:name, :synopsis, :director)
end