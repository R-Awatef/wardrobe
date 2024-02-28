class UsersController < ApplicationController
  before_action :set_user, only: :destroy
#   before_action :set_outfit, only: [:new, :create]

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     @user.outfit = @outfit
#     if @user.save
#       redirect_to outfit_path(@outfit)
#     else
#       @rental = Rental.new
#       render :new, status: :unprocessable_entity
#     end
#   end

#   def destroy
#     @user.destroy
#     redirect_to outfit_path(@user.outfit), status: :see_other
#   end

#   private

#   def user_params
#     params.require(:user).permit(:first_name, :last_name, :outfit_id)
#   end

#   def set_user
#     @user = User.find(params[:id])
#   end

#   def set_outfit
#     @outfit = Outfit.find(params[:outfit_id])
#   end
end
