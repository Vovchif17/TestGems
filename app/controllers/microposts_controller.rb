class MicropostsController < ApplicationController
  
  def create 
    @microposts = Micropost.new 
  end 

  def show
    @user = current_user
    @microposts = current_user.microposts
  end
end