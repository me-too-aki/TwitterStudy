# coding: utf-8
class TweetsController < ApplicationController
 $txt                      #ƒOƒ[ƒoƒ‹•Ï”
  def index
   @tweets = Tweet.all
  end

  def new
  end
  
   def confirm
  end
  
  def create
   puts "create!"
   $txt = params[:tweet][:content]
   redirect_to "/tweets/confirm"
  end
  
  def tweetSave
  @debug = "debug=",params[:cbt0]
  puts  @debug
  
   if params[:cbt0]
     @tweet = Tweet.new
     @tweet.content = $txt
     @tweet.save
     puts "tweetSave!"
     redirect_to "/tweets/index"
   else
     puts "cancel!"
     redirect_to "/tweets/new"
   end
  end

  
end
