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

  def update
    @sale = Sale.find_by_id(params[:id])
    # finds number of views on existing sale for auto populating in edit form (might not be needed)
    @sale_view = Sale.views
    @sale.update(post_params)
  end

  def destroy
    @sale = Sale.find_by_id(params[:id])
    Sale.destroy(@sale)
    redirect_to sales_path
  end

  private

  def sale_params
    params.require(:sale).permit(:title, :body, :user_id, :category, :price, :zipcode)
  end

end
