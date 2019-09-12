class ProductsController < ApplicationController
  before_action :set_product, only: %i[show destroy]
  skip_before_action :authenticate_user!, only: %i[show index]
  def new
    @product = Product.new
    authorize(@product)
  end

  def create
    @product = Product.new(product_params)
    @product.owner = current_user
    authorize(@product)
    if @product.save
      redirect_to mystyle_path
    else
      p @product.errors
      render 'new'
    end
  end

  def index
    # @product = Product.find(params[:id])
    @products = policy_scope(Product)
  end

  def show
    @sale = Sale.new
    @product = Product.find(params[:id])
    @markers =
      {
        lat: @product.latitude,
        lng: @product.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { product: @product })
      }
  end

  def mystyle
    @products = Product.where(owner: current_user)
    authorize(@products)
  end

  def edit
  end

  def destroy
  end

  def update
  end
end


private

  def set_product
    @product = Product.find(params[:id])
    authorize(@product)
  end

  def product_params
    params.require(:product).permit(:name, :description, :category, :photo, :price, :active, :address)
  end
