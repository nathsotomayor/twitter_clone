class UsersController < ApplicationController
  include UserScoped

  def show
    @tweets = @user.tweets.paginate(page: params[:page], per_page: 10)
  end

  def looking_for
    if params[:followed].present?
      @look_for = User.find_by(username: params[:followed])
      if @look_for != current_user
        if current_user.following.include?(@look_for)
          redirect_to tweets_path, alert: "User already followed."
        elsif !@look_for
          redirect_to tweets_path, alert: "Username does not exists."
        else
          follow = Relationship.create(follower: current_user, followed: @look_for)
          redirect_to user_path(@look_for.username), notice: "Your are now following #{@look_for.username}"
        end
      else
        redirect_to tweets_path, alert: "Invalid operation. You can't follow yourself."
      end
    end
  end

end