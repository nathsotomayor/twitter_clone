class FollowersController < ApplicationController
  include UserScoped

  def index
    @followers_pag = @user.followers.paginate(page: params[:page], per_page:10)
  end

end
