class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to admin_user_path(@user.id)
    else
    render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name_first, :name_second, :name_firdt_rubi, :name_second_rubi, :tel, :email, :is_deleted)
  end

end
