class UsersController < ApplicationController
  include UserScoped

  def show
    @tweets = @user.tweets.paginate(page: params[:page], per_page: 10)
  end

  # def follow_username
  #   @user = User.find_by(username: params[:user])
  #   if @user
  #     if current_user.following?(@user)
  #       flas[:alert] = "You already follow #{@user.username}"
  #     else

  #     end
  #   end
  # end

  # def following
  #   @user = User.find(params[:id])
  # end

  # def followers
  #   @user = User.find(params[:id])
  # end

end