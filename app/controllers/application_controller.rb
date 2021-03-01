class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource) 
    users_url
  end

  def authenticate_user!
    if current_user
      super
    else 
      redirect_to root_path
    end  
  end
end