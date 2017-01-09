class SalesController < ApplicationController

  def index
    @sales = Sale.all
  end

  def show
    @sale = Sale.find_by_id(params[:id])
  end

  def new
    @sale = Sale.new
  end

  def create
    new_sale = Sale.new(sale_params)

    if new_sale.save
      sale_id = new_sale.id
      redirect_to sale_path(sale_id)
    else
      flash[:error] = new_sale.errors.full_messages[0] +"!"
    end
  end

  def update
    @sale = Sale.find_by_id(params[:id])
    @sale.update(sale_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @sale = Sale.find_by_id(params[:id])
    Sale.destroy(@sale)
    redirect_to user_path
  end

  private

  def sale_params
    params.require(:sale).permit(:title, :body, :user_id, :category, :price, :zipcode)
  end

end
