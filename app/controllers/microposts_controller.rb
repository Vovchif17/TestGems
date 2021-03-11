class MicropostsController < ApplicationController
  def index
    @microposts = Micropost.all
  end

  def create 
    @microposts = Micropost.new 
  end 

  def show
  end
end