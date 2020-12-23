class RubrosController < ApplicationController
  before_action :set_rubro, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:index]

  # GET /rubros
  # GET /rubros.json
  def index
    @rubros = Rubro.all
  end

  # GET /rubros/1
  # GET /rubros/1.json
  def show
  end

  # GET /rubros/new
  def new
    @rubro = Rubro.new
  end

  # GET /rubros/1/edit
  def edit
  end

  # POST /rubros
  # POST /rubros.json
  def create
    @rubro = Rubro.new(rubro_params)

    respond_to do |format|
      if @rubro.save
        format.html { redirect_to rubros_path, notice: 'Rubro creado.' }
        format.json { render :show, status: :created, location: @rubro }
      else
        format.html { render :new }
        format.json { render json: @rubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubros/1
  # PATCH/PUT /rubros/1.json
  def update
    respond_to do |format|
      if @rubro.update(rubro_params)
        format.html { redirect_to rubros_path, notice: 'Rubro actualizado.' }
        format.json { render :show, status: :ok, location: @rubro }
      else
        format.html { render :edit }
        format.json { render json: @rubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubros/1
  # DELETE /rubros/1.json
  def destroy
    begin
    @rubro.destroy 
    respond_to do |format|
      format.html { redirect_to rubros_url, notice: 'Rubro eliminado.' }
      format.json { head :no_content }
    end
    rescue Exception
      redirect_to rubros_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubro
      @rubro = Rubro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rubro_params
      params.require(:rubro).permit(:nombre, :perecedero)
    end
end
