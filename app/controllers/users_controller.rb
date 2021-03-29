class UsersController < ApplicationController
  include UserScoped

  def show
    @tweets = @user.tweets.paginate(page: params[:page], per_page: 10)
  end

  def search_user
    if params[:followed].present?
      @to_follow = User.find_by(username: params[:followed])
      if @to_follow != current_user
        if current_user.following.include?(@to_follow)
          redirect_to tweets_path, alert: "User already followed."
        elsif !@to_follow
          redirect_to tweets_path, alert: "Username does not exists."
        else
          follow = Relationship.create(follower: current_user, followed: @to_follow)
          redirect_to user_path(@to_follow.username), notice: "Now, your are following #{@to_follow.username}"
        end
      else
        redirect_to tweets_path, alert: "Invalid operation."
      end
    end
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

end