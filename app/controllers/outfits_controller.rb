class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :update, :destroy]


  def index
    @outfits = Outfit.all
    # @outfit = Outfit.new
  end

  def new
    @outfit = Outfit.new
    @rental = Rental.new
    # @user = User.new
    # @outfit = current_user.outfits.new

  end

  def show
    # @outfit = Outfit.find(params[:id])
    @rental = Rental.new(outfit: @outfit)
  end

  def create
    @rental = Rental.new
    @outfit = Outfit.new(outfit_params)
    if @outfit.save
      redirect_to outfits_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @outfit.update(outfit_params)
      redirect_to outfit_path(@outfit)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @outfit.destroy
    redirect_to outfits_path, status: :see_other
  end

  def set_outfit
    @outfit = Outfit.find(params[:id])
  end

  def outfit_params
    params.require(:outfit).permit(:title, :description, :img_url, :category, :size, :photo)
  end
end
