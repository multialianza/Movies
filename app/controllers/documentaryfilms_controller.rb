class DocumentaryfilmsController < ApplicationController
  def index
    @documentaryfilms = Documentaryfilm.all
  end

  def create
    @documentaryfilm= Documentaryfilm.new(documentaryfilm_params)
    respond_to do |format|
      if @documentaryfilm.save
        format.html { redirect_to documentaryfilms_path, notice: "El documental se ha creado exitosamente" }
        format.json { render :show, status: :created, location: @documentaryfilms}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @documentaryfilms.errors, status: :unprocessable_entity }
      end
    end

    
  end

  def new
    @documentaryfilm = Documentaryfilm.new
  end
end

private

def documentaryfilm_params
  params.require(:documentaryfilm).permit(:name, :synopsis, :director)
end
