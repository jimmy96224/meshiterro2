class UsersController < ApplicationController
  def show
    @user = Users.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
    @user = Users.find(params[:id])
  end
  
  def update
    @user = Users.find(params[:id])
    @user.update
    redirect_to user_path(@user.id)
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
  
  
end
