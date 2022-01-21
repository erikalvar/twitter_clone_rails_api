class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  def show
    @tweet = Tweet.find(params[:id])
    render json: @tweet
  end

  def create
    @tweet = Tweet.create(
      content: params[:content],
      user_id: params[:user_id]
    )    
    render json: @tweet
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.content = params[:content] || @tweet.content
    @tweet.save
    render json: @tweet
  end

  def destroy
    @tweets = Tweet.all
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    render json: @tweets
  end
end
