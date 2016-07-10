class AmigosController < ApplicationController
  def new
    @amigo = Amigo.new
    @amigo.sorteio_id = params[:sorteio_id]
  end

  def create
    @amigo = Amigo.new amigo_params
    
    if @amigo.save
      redirect_to @amigo.sorteio
    else
      render :new
    end
  end

  def edit
    @amigo = Amigo.find_by_id(params[:id])
  end

  def update
    @amigo = Amigo.find(params[:id])
    @amigo.update amigo_params
    redirect_to '/hello/world'
  end

  private

    def amigo_params
      params.require(:amigo).permit(:nome, :email, :sorteio_id)
    end
end
