class User::UsersController < ApplicationController
  before_action :set_user, only: [:favorites]


  def index
  end

  def new
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
    redirect_to user_path
    else
    render :edit
    end
  end

  def favorites
    @user = User.find(params[:id])
    favorites = Favorite.where(user_id: @user.id).pluck(:tweet_id)
    @favorite_tweets = Tweet.find(favorites)
  end

  def unsubscribe
    @user = current_user
  end

  def withdraw
    @user = current_user
    @user.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name_first, :name_second, :name_firdt_rubi, :name_second_rubi, :tel, :email, :is_deleted)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
