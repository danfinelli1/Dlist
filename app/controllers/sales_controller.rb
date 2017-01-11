class SalesController < ApplicationController

  def index
    if params[:category]
      @sales = Sale.where(:category => params[:category])
    else
      @sales = Sale.all
    end

    if params[:price]
      @sales = Sale.where('price < ?', params[:price])
    end
  end

  def show
    @sale = Sale.find_by_id(params[:id])
    @user = User.find(Sale.find(params[:id]).user_id)
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

  def purchase
    @sale = Sale.find_by_id(params[:id])
    @balance = current_user.balance - @sale.price
    current_user.update({balance: @balance})
    admin = User.find_by_email("admin@dlist.com")
    admin.update({balance:admin.balance + @sale.price})
    redirect_to sale_path(@sale)
  end

  private

  def sale_params
    params.require(:sale).permit(:title, :body, :user_id, :category, :price, :zipcode)
  end

end
