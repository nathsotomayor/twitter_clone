class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    # @tweets = Tweet.all.order("created_at DESC")
    @tweets = Tweet.all.order("created_at DESC").paginate(page: params[:page], per_page: 3)
    @tweet = Tweet.new
  end

  def show
  end

  def new
    @tweet = current_user.tweets.build
  end

  def edit
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to tweets_path(@tweet), notice: "Tweet was successfully created." }
        format.json { render :show, status: :created, location: tweets_path(@tweet) }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: "Tweet was successfully updated." }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweet_url, notice: "Tweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    def tweet_params
      params.require(:tweet).permit(:tweet)
    end
end
