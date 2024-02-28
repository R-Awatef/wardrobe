class RentalsController < ApplicationController

  def index
    @rentals = current_user.rentals
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @outfit = Outfit.find(params[:outfit_id])
    @rental.outfit = @outfit
    if @rental.save
      redirect_to outfit_path(@outfit)
    else
    @user = User.new
      render "outfits/show", status: :unprocessable_entity
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to outfit_path(@rental.outfit)
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :status)
  end
end
