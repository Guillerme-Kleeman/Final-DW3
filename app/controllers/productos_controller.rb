class ProductosController < ApplicationController

  before_action :set_marcas_rubros, only: [:edit, :new]
  before_action :set_producto, only: [:edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:index]

  def index
    @productos = Producto.all
  end

  def new
    @producto = Producto.new
  end

  def edit
  end

  def create
    @producto = Producto.new(producto_params)
    if @producto.save
      redirect_to productos_url
    else
      render :new
    end
  end

  def update
    if @producto.update(producto_params)
      redirect_to productos_url
    else
      render :edit
    end
  end

  def destroy
     @producto.destroy
      redirect_to productos_url
  end

  private
    # Agrega listado para select 
    def set_marcas_rubros
      @marcas = Marca.all
      @rubros = Rubro.all
    end

    # Busca producto según id pasado por parámetros
    def set_producto
      @producto = Producto.find(params['id'] || params['producto']['id'])
    end

    # Parámetros pasados por formulario
    def producto_params
      params.require(:producto).permit(:nombre, :cantidad_minima, :cantidad_actual, :precio, :marca_id, :rubro_id, :activo)
    end
end
