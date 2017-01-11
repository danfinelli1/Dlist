class RentsController < ApplicationController
  def index
    if params[:category]
      @rents = Rent.where(:category => params[:category])
    else
      @rents = Rent.all
    end
  end

  def new
      @rent = Rent.new
  end

  def create
      @rent = Rent.create(rent_params)
      redirect_to user_path(current_user)
  end

  def show
      @rent = Rent.find_by_id(params[:id])
  end

  def edit
      @rent = Rent.find_by_id(params[:id])
  end

  def update
      updated_rent = Rent.find_by_id(params[:id])
      if updated_rent.update(rent_params)
          redirect_to user_path(current_user)
      else
          redirect_to edit_rent_path
      end
  end

  def destroy
      deleted_rent = Rent.find_by_id(params[:id])
      Rent.destroy(deleted_rent)
      redirect_to user_path(current_user)
  end

  private

  def rent_params
      params.require(:rent).permit(:title, :body, :category, :price, :address, :sqfootage, :bed, :bath, :user_id)
  end


end
