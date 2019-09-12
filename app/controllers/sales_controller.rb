class SalesController < ApplicationController
  before_action :set_product, only: %i[show destroy]

  def create

    @product = Product.find(params[:product_id])
    authorize(@product)
    @sale = Sale.new
    @sale.product = @product
    @sale.user = current_user
    @sale.date = params[:date]

    if @sale.save
      redirect_to merci_path
    else
      raise
      p @sale.errors
      render product_path(@product)
    end
  end

  def index
    @sales = Sale.all.where(user: current_user)
    @products = policy_scope(Product)
  end

  def mybusiness
    @sales = Sale.all.where(user: current_user)
    @products = policy_scope(Product)
  end

  def show
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize(@product)
  end

  def sales_params
    params.require(:sales).permit(:product_id, :date, :paid, params[:sale])
  end
end

