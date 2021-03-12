class UsersController < ApplicationController
  #before_action :set_user, only: %i[ show ]

=begin
  def index
    @users = User.all
    @users = User.new
    @tweets = Tweet.all
  end
=end

  def show
    @user = User.find(params[:id])
  end

  def following
    @users = User.all
  end

  def followers
    @users = User.all
  end

end