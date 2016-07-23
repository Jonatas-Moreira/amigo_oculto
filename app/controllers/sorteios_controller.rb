class SorteiosController < ApplicationController
  before_action :set_sorteio, only: [:show, :edit, :update, :destroy]

  # GET /sorteios
  # GET /sorteios.json
  def index
    @sorteios = Sorteio.all
  end

  # GET /sorteios/1
  # GET /sorteios/1.json
  def show
  end

  # GET /sorteios/new
  def new
    @sorteio = Sorteio.new
  end

  # GET /sorteios/1/edit
  def edit
  end

  # POST /sorteios
  # POST /sorteios.json
  def create
    @sorteio = Sorteio.new(sorteio_params)

    respond_to do |format|
      if @sorteio.save
        flash[:notice] = 'Salvo com sucesso'
        format.html { redirect_to @sorteio }
        format.json { render :show, status: :created, location: @sorteio }
      else
        format.html { render :new }
        format.json { render json: @sorteio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sorteios/1
  # PATCH/PUT /sorteios/1.json
  def update
    respond_to do |format|
      if @sorteio.update(sorteio_params)
        format.html { redirect_to @sorteio, notice: 'Sorteio was successfully updated.' }
        format.json { render :show, status: :ok, location: @sorteio }
      else
        format.html { render :edit }
        format.json { render json: @sorteio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sorteios/1
  # DELETE /sorteios/1.json
  def destroy
    @sorteio.destroy
    respond_to do |format|
      format.html { redirect_to sorteios_url, notice: 'Sorteio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sorteio
      @sorteio = Sorteio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sorteio_params
      params.require(:sorteio).permit(:descricao, :regras, :data,
        amigos_attributes: [:id, :nome, :email, :_destroy]
      )
    end
end
