class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

  def following
    @user = User.find(params[:id])
  end

  def followers
    @user = User.find(params[:id])
  end

end