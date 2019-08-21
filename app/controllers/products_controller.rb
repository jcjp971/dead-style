class ProductsController < ApplicationController
  before_action :set_product, only: %i[show destroy]
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
  end

  def show
    @sale = Sale.new
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
