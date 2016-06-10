class UsersController < ApplicationController
  before_filter :authorize, :except => [:login, :verify]
  def verify
    user = User.find_by_email(params[:email])
    if user.nil?
      redirect_to '/login'
    else
      # use bcrypt to check if the password that was put in the form
      # matches the one that we have stored in the DB.
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/'
      else
        redirect_to '/login'
      end
    end
  end
  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end
end
