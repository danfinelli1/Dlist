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
      # redirect_to new_city_post_path(current_city)
    end
  end

  private

  def sale_params
  params.require(:sale).permit(:title, :body, :user_id, :category, :price, :zipcode, :views)
  end

end
