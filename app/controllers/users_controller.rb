class UsersController < ApplicationController
  before_filter :authorize, :except => [:login]
  def verify
    user = User.find_by_email(params[:email])
    if user.nil?
      redirect_to '/login'
    else
      if user.authenticate(session[:user_id] = userid)
        redirect_to '/'
      else
        redirect_to '/login'
      end
    end
  end
end
