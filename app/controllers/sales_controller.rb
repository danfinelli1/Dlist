class SalesController < ApplicationController

  def index
  end

  def show
    @sale = Sale.find_by_id(params[:id])
  end

  def new
    @sale = Sale.new
    # @user = User.find_by_id(params[:user_id])
  end

  def create
    # current_user = User.find_by_id(params[:user_id])
    new_sale = Sale.new(sale_params)

    if new_sale.save
      sale_id = new_sale.id
      redirect_to sale_path(sale_id)
    else
      flash[:error] = new_sale.errors.full_messages[0] +"!"
      # redirect_to new_city_post_path(current_city)
    end
  end


  def sale_params
  params.require(:sale).permit(:title, :body, :user_id, :category, :price, :zipcode, :views)
  end

end
