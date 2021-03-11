class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @microposts = current_user.microposts.paginate(page: params[:page])
  end
end
