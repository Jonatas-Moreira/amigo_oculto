class AmigosController < ApplicationController
  def new
    @amigo = Amigo.new
  end

  def create
    @amigo = Amigo.create amigo_params
    redirect_to '/hello/world'
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
      params.require(:amigo).permit(:nome, :email)
    end

end
